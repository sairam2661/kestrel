import subprocess
import tempfile
import os
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM, pipeline
import tempfile
from datetime import datetime
import json

# Rewrite to read from config and use class
EXAMPLES_DIRECTORY = "examples/mlir/triton"  
GRAMMAR_FILE = "grammars/mlir.g4"
OUT_DIRECTORY = "trees"
VALID_MLIR_DIRECTORY = "outputs/mlir"
START_RULE = "start_rule"
NUM_SAMPLES = 1000
NUM_EXAMPLES = 5  
SAMPLES_PER_BATCH = 3  
MODEL_ID = "meta-llama/Llama-3.1-8B-Instruct"
TEMP_FILE = "tmp/sample.mlir"

model = None
tokenizer = None
generator_pipeline = None

def setup_model():
	global model, tokenizer, generator_pipeline
	with open("secrets.json") as f:
		secrets = json.load(f)
		os.environ["HF_TOKEN"] = secrets["HF_TOKEN"]

	try:
		tokenizer = AutoTokenizer.from_pretrained(MODEL_ID)
		model = AutoModelForCausalLM.from_pretrained(
			MODEL_ID,
			torch_dtype=torch.bfloat16,
			device_map="auto",
		)
		generator_pipeline = pipeline(
			"text-generation",
			model=model,
			tokenizer=tokenizer,
			max_new_tokens=1024,
			do_sample=True,
			temperature=0.6,
			top_p=0.9,
		)
	except Exception as e:
		print(f"Error loading model: {e}")
		exit(1)

def get_all_mlir_files(examples_dir):
	if not os.path.exists(examples_dir):
		print(f"Error: Examples directory '{examples_dir}' not found.")
		return []
	
	mlir_files = [f for f in os.listdir(examples_dir) if f.endswith('.mlir')]
	return mlir_files

def get_rotating_examples(examples_dir, all_files, start_index, num_examples=5):
	if not all_files:
		return [], []
	
	examples = []
	used_files = []
	
	for i in range(num_examples):
		file_index = (start_index + i) % len(all_files)
		filename = all_files[file_index]
		filepath = os.path.join(examples_dir, filename)
		
		try:
			with open(filepath, 'r', encoding='utf-8') as f:
				content = f.read().strip()
				examples.append(content)
				used_files.append(filename)
		except Exception as e:
			print(f"Error reading {filepath}: {e}")
	
	return examples, used_files

def construct_few_shot_prompt(examples):
	if not examples:
		return """Generate well-formed, complex, MLIR code for the Triton frontend.
DO NOT WRITE ANYTHING ELSE BESIDES THE MLIR code.
KEEP IT STRUCTURED AND COMPLETE.
WRITE A SINGLE SOLUTION."""
	
	prompt_parts = []
	
	for i, example_code in enumerate(examples, 1):
		prompt_parts.append(f"""Example {i}:
Generate well-formed, complex, MLIR code for the Triton frontend.
MAKE SURE IT USES TRITON-SPECIFIC DIALECTS.
DO NOT WRITE ANYTHING ELSE BESIDES THE MLIR code.
KEEP IT STRUCTURED AND COMPLETE.
WRITE A SINGLE SOLUTION.
IT NEEDS TO BE VERY DIFFERENT FROM PREVIOUS SOLUTIONS.

Solution {i}:
{example_code}""")
	
	final_example_num = len(examples) + 1
	prompt_parts.append(f"""Example {final_example_num}:
Generate well-formed, complex, MLIR code for the Triton frontend.
MAKE SURE IT USES TRITON-SPECIFIC DIALECTS.
DO NOT WRITE ANYTHING ELSE BESIDES THE MLIR code.
KEEP IT STRUCTURED AND COMPLETE.
WRITE A SINGLE SOLUTION.
IT NEEDS TO BE VERY DIFFERENT FROM PREVIOUS SOLUTIONS.

Solution {final_example_num}:""")
	
	return "\n\n".join(prompt_parts)

def generate_mlir(prompt):
	if not generator_pipeline:
		raise RuntimeError("Model pipeline is not initialized. Call setup_model() first.")

	messages = [
		{"role": "system", "content": "You are an expert in MLIR. Generate only raw MLIR code based on the user's request."},
		{"role": "user", "content": prompt},
	]

	prompt_for_model = tokenizer.apply_chat_template(
		messages,
		tokenize=False,
		add_generation_prompt=True
	)

	outputs = generator_pipeline(prompt_for_model)
	generated_text = outputs[0]['generated_text']

	# Clean the output to get only the generated MLIR code
	response = generated_text[len(prompt_for_model):].strip()
	
	# Remove potential markdown code blocks
	if response.startswith("```mlir"):
		response = response.split("```mlir\n", 1)[1]
	if response.endswith("```"):
		response = response.rsplit("\n```", 1)[0]
		
	return response.strip()

def is_valid_mlir(filepath, grammar, rule):
	if not os.path.exists(filepath):
		print(f"File not found: {filepath}")
		return False
		
	try:
		result = subprocess.run(
			['grammarinator-parse', '-r', rule, '-i', filepath, '-o', OUT_DIRECTORY, grammar],
			capture_output=True,
			check=False,
			text=True
		)
		
		is_valid = result.returncode == 0 and "error" not in result.stderr

		if not is_valid and result.stderr:
			error_message = result.stderr.strip()
			for line in error_message.splitlines():
				print(f"{line}")

		return is_valid
	except FileNotFoundError:
		print("Error: 'grammarinator-parse' command not found.")
		exit(1)
	except Exception as e:
		print(f"An unexpected error occurred while checking {filepath}: {e}")
		return False

def save_valid_mlir(content, sample_number):
	os.makedirs(VALID_MLIR_DIRECTORY, exist_ok=True)
	timestamp = datetime.now().strftime("%Y%m%d_%H%M%S_%f")[:-3]  # Include milliseconds
	filename = f"valid_sample_{sample_number:03d}_{timestamp}.mlir"
	filepath = os.path.join(VALID_MLIR_DIRECTORY, filename)
	with open(filepath, 'w', encoding='utf-8') as f:
		f.write(content)
	return filepath
	
def main():
	if not os.path.exists(GRAMMAR_FILE):
		print(f"Error: Grammar file '{GRAMMAR_FILE}' not found.")
		return

	all_mlir_files = get_all_mlir_files(EXAMPLES_DIRECTORY)
	
	if not all_mlir_files:
		print("No MLIR example files found. Exiting.")
		return
	
	setup_model()

	valid_count = 0
	saved_files = []
	current_file_index = 0  
	
	print(f"\n--- Running {NUM_SAMPLES} Samples ---")
	print(f"Rotating examples every {SAMPLES_PER_BATCH} samples")

	for i in range(1, NUM_SAMPLES + 1):
		if (i - 1) % SAMPLES_PER_BATCH == 0:
			examples, used_files = get_rotating_examples(
				EXAMPLES_DIRECTORY, all_mlir_files, current_file_index, NUM_EXAMPLES
			)
			prompt_template = construct_few_shot_prompt(examples)
			
			batch_num = ((i - 1) // SAMPLES_PER_BATCH) + 1
			print(f"\n--- Batch {batch_num}: Using examples from files: {', '.join(used_files)} ---")
			
			current_file_index = (current_file_index + NUM_EXAMPLES) % len(all_mlir_files)
		
		print(f"Running sample {i}/{NUM_SAMPLES}...")
		generated_code = generate_mlir(prompt_template)

		with open(TEMP_FILE, "w") as f:
			f.write(generated_code)

		if is_valid_mlir(TEMP_FILE, GRAMMAR_FILE, START_RULE):
			valid_count += 1
			saved_filepath = save_valid_mlir(generated_code, i)
			saved_files.append(saved_filepath)
		else:
			print(f"Sample {i} is INVALID.")

	print("\n--- Results ---")
	validity_rate = (valid_count / NUM_SAMPLES) * 100
	print(f"Total valid samples: {valid_count}/{NUM_SAMPLES}")
	print(f"Validity Rate: {validity_rate:.2f}%")
	
	if saved_files:
		print(f"\nValid MLIR files saved in '{VALID_MLIR_DIRECTORY}':")
		for filepath in saved_files:
			print(f"  - {filepath}")

if __name__ == "__main__":
	main()