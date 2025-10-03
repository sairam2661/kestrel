from transformers import AutoModelForCausalLM, AutoTokenizer
import torch
import configparser
import json

fault_localization = '''
    You will be provided with an MLIR code snippet (which may include different dialects), and a catalog of possible semantic inconsistencies.

    ### Evaluation Steps:

    1. Carefully read the problem statement to identify the expected computation, transformations, and dialect-specific semantics.
    2. Examine the MLIR code snippet and check if it correctly reflects the intended functionality while respecting dialect-specific rules.
    3. Identify any semantic errors, including misuse of operations, type mismatches, invalid attributes, or dialect violations.
    4. Output your findings strictly in JSON format as a list.

    ### Output Format:

    * If the MLIR code is semantically correct and consistent with the problem, output:

    ```json
    [{"inconsistency": "None", "severity": "Negligible"}]
    ```
    * If the code is incorrect, output all detected inconsistencies with their severity:

    ```json
    [
        {"inconsistency": "<description of inconsistency>", "severity": "<Negligible|Small|Major|Fatal>"},
        {"inconsistency": "<description of another inconsistency>", "severity": "<Negligible|Small|Major|Fatal>"}
    ]
    ```

    ### Taxonomy of Semantic Inconsistencies:

    1. **Unreachable / dead operations** (e.g., operation not connected in the SSA graph): Negligible
    2. **Unused values / missing return uses**: Small
    3. **Mismatched operand and result types across ops**: Major
    4. **Invalid attribute values (e.g., wrong dimension sizes, layout specifiers)**: Major
    5. **Dialect rule violation (e.g., using op outside allowed dialect context)**: Major
    6. **Undefined or undeclared symbol / function / region reference**: Fatal
    7. **Incomplete program fragment (required ops or terminators missing)**: Fatal
    8. **Incorrect semantics for the stated problem (wrong logic in operations, invalid lowering intention)**: Fatal

    ### Evaluation Form:

    JSON output only, no extra commentary.

    **MLIR Code Snippet:**
    {CODE}

    **Expected JSON Output Example:**

    ```json
    [{"inconsistency": "Mismatched operand and result types in addi operation", "severity": "Major"}]
    ```
'''


class CodeJudge:
    def __init__(self, config_path):
        self._load_config(config_path)
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
        self.hf_tokenizer = AutoTokenizer.from_pretrained(self.model_name)
        self.model = AutoModelForCausalLM.from_pretrained(
            self.model_name,
            device_map="auto",
        )

    def _load_config(self, config_path: str):
        config = configparser.ConfigParser()
        config.read(config_path)
        gen_config = config['Generation']
        self.model_name = gen_config.get('model_name')
        self.grammar_file = gen_config.get('lark_grammar_file')
        self.prompt_file = gen_config.get('prompt_file')
        self.prompt_text = open(self.prompt_file).read().strip()
        self.max_new_tokens = gen_config.getint('max_new_tokens')

    def get_score(self, code):
        full_prompt = fault_localization.replace('{CODE}', code)
        messages = [
            {"role": "system", "content": "You are an expert in MLIR"},
            {"role": "user", "content": full_prompt},
        ]

        formatted_prompt = self.hf_tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )

        formatted_prompt = self.hf_tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )

        inputs = self.hf_tokenizer(
            formatted_prompt,
            return_tensors="pt"
        ).to(self.device)

        with torch.no_grad():
            output = self.model.generate(
                **inputs,
                max_new_tokens=self.max_new_tokens,
                pad_token_id=self.hf_tokenizer.eos_token_id)
            

        decoded_output = self.hf_tokenizer.decode(
            output[0], skip_special_tokens=True
        )

        try:
            start_idx = decoded_output.index('[')
            end_idx = decoded_output.index(']', start_idx) + 1
            json_str = decoded_output[start_idx:end_idx]
            result = json.loads(json_str)
        except Exception as e:
            # If JSON extraction fails, return full output for debugging
            result = {"error": "Could not parse JSON", "raw_output": decoded_output}

        score = self._parse_score(result)

        return score

    def _parse_score(self, result):
        '''
        '''

        small = 0
        major = 0
        fatal = 0

        for incosistency in result:
            if incosistency['severity'] == 'Small':
                small+=1
            elif incosistency['severity'] == 'Major':
                major+=1
            elif incosistency['severity'] == 'Fatal':
                fatal +=1
        
        penalty = max(-100,-(small + major + fatal))
        score = 1 - penalty / 100
        return score

