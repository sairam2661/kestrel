import argparse
import configparser
import json
import os
import random
import time
from tqdm import tqdm
from vllm import LLM, SamplingParams
from vllm.sampling_params import GuidedDecodingParams
import torch
from datetime import datetime

import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from grammar_utils import extract_subgrammar
from prompt_builder import create_fuzzing_prompt

def load_config(config_path: str):
	config = configparser.ConfigParser()
	config.read(config_path)
	return config['Generation']

def main(args):
	with open("secrets.json") as f:
		secrets = json.load(f)
		os.environ["HF_TOKEN"] = secrets["HF_TOKEN"]
		
	config = load_config(args.config_path)
	grammar_str = open(config["grammar_file"]).read().strip()
	all_examples = [os.path.join(config["example_dir"], f) for f in os.listdir(config["example_dir"]) if f.endswith('.mlir')]
	
	print(f"Loading model '{config['model_name']}' with vLLM...")
	llm = LLM(
		model=config["model_name"],
		guided_decoding_backend="guidance"
	)
	print("Model loaded successfully.")
	tokenizer = llm.get_tokenizer()

	num_to_generate = config.getint("num_samples_to_generate", 4)
	prompt_refresh_interval = config.getint("prompt_refresh_interval", 10)
	output_dir = config["output_dir"]
	os.makedirs(output_dir, exist_ok=True)
	
	total_samples_saved = 0
	start_time = time.time()
	
	# Loop in chunks based on the refresh interval
	for i in range(0, num_to_generate, prompt_refresh_interval):
		print(f"\nCreating new prompt for samples {i+1} - {min(i + prompt_refresh_interval, num_to_generate)}")
		
		num_few_shot = config.getint("num_few_shot_examples", 3)
		selected_files = random.sample(all_examples, num_few_shot)
		
		few_shot_examples = []
		for filepath in selected_files:
			with open(filepath, 'r') as f:
				content = f.read()
			subgrammar = extract_subgrammar(grammar_str, content)
			few_shot_examples.append({"content": content, "subgrammar": subgrammar})

		frontend = config["frontend"]
		focus_dialects_str = config.get("focus_dialects")
		focus_dialects = [d.strip() for d in focus_dialects_str.split(',')] if focus_dialects_str else None
		
		messages = create_fuzzing_prompt(
			examples=few_shot_examples,
			frontend=frontend,
			focus_dialects=focus_dialects,
			full_grammar=grammar_str
		)
		formatted_prompt = tokenizer.apply_chat_template(
			messages, tokenize=False, add_generation_prompt=True
		)

		num_in_batch = min(prompt_refresh_interval, num_to_generate - i)
		
		sampling_params = SamplingParams(
			max_tokens=config.getint("max_new_tokens"),
			temperature=0.8, 
			guided_decoding=GuidedDecodingParams(grammar=grammar_str)
		)
		
		prompts_batch = [formatted_prompt] * num_in_batch
		batch_outputs = llm.generate(prompts_batch, sampling_params, use_tqdm=True)
		
		print(f"Batch complete. Saving {len(batch_outputs)} files...")
		for batch_index, output in enumerate(batch_outputs):
			sample_num = i + batch_index + 1
			timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
			result_text = output.outputs[0].text

			filename = f"{frontend}_{timestamp}_seed_{sample_num}.mlir"
			filepath = os.path.join(output_dir, filename)
			with open(filepath, 'w') as f:
				f.write(result_text)
			total_samples_saved += 1

	total_time = time.time() - start_time
	print(f"\nGeneration complete. Saved {total_samples_saved} samples to '{output_dir}'.")
	print(f"Total time: {total_time:.2f} seconds.")

	print("Shutting down the vLLM engine...")
	del llm
	torch.cuda.empty_cache()
	print("vLLM engine shut down.")

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description="Generate MLIR fuzzer seeds using a dynamic few-shot prompt.")
	parser.add_argument("config_path", type=str, help="Path to the configuration file.")
	args = parser.parse_args()
	main(args)