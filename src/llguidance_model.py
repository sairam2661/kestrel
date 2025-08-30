import llguidance
import llguidance.hf
import json
import torch
import numpy as np
import configparser
from transformers import AutoModelForCausalLM, AutoTokenizer
import os
import datetime

def timestamp(millis=False):
    now = datetime.datetime.now()
    if millis:
        return now.strftime("%Y%m%d-%H%M%S-%f")[:-3]
    return now.strftime("%Y%m%d-%H%M%S")


class LLGuidanceGenerator:
    def __init__(self, config_path: str, log_dir: str = "./logs"):
        self._load_config(config_path)

        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

        self.hf_tokenizer = AutoTokenizer.from_pretrained(self.model_name)
        self.model = AutoModelForCausalLM.from_pretrained(
            self.model_name,
            device_map="auto"
        )
        
        self.log_dir = log_dir
        os.makedirs(self.log_dir, exist_ok=True)
        
        self._setup_interpreter()

    def _load_config(self, config_path: str):
        config = configparser.ConfigParser()
        config.read(config_path)
        gen_config = config['Generation']

        self.model_name = gen_config.get('model_name')
        self.grammar_file = gen_config.get('lark_grammar_file')
        self.prompt_file = gen_config.get('prompt_file')
        self.prompt_text = open(self.prompt_file).read().strip()
        self.max_new_tokens = gen_config.getint('max_new_tokens')

    def _setup_interpreter(self):
        grammar_str = open(self.grammar_file).read().strip()
        self.tokenizer = llguidance.hf.from_tokenizer(self.hf_tokenizer)

        self.interpreter = llguidance.LLInterpreter(
            self.tokenizer,
            json.dumps({"grammars": [{"lark_grammar": grammar_str}]}),
            enable_ff_tokens=False,
            enable_backtrack=False,
            log_level=1,
        )

    def generate(self) -> str:
        messages = [{"role": "user", "content": self.prompt_text}]
        formatted_prompt = self.hf_tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )

        run_log_dir = f"{self.log_dir}/{timestamp()}-{self.model_name.replace('/', '_')}"
        os.makedirs(run_log_dir, exist_ok=True)
        log_file = f"{run_log_dir}/{timestamp(millis=True)}-summary.json"
        
        ll_interpreter = self.interpreter.deep_copy()
        input_ids = self.tokenizer.tokenize_str(formatted_prompt)
        processed_prompt = ll_interpreter.process_prompt(input_ids)
        
        token_ids_in_flight = processed_prompt.copy()
        
        generated_token_ids = []
        total_cons_logprob = 0.0
        total_raw_logprob = 0.0
        
        while len(generated_token_ids) < self.max_new_tokens:
            mask_bytes, _ = ll_interpreter.compute_mask()
            if mask_bytes is None: break

            mask = np.frombuffer(mask_bytes, dtype=np.uint8).astype(bool)
            inputs = torch.tensor([token_ids_in_flight], device=self.device)
            
            with torch.no_grad():
                logits = self.model(inputs).logits[:, -1, :]

            raw_log_probs = torch.log_softmax(logits, dim=-1)[0]
            logits[0][~mask] = float('-inf')
            cons_log_probs = torch.log_softmax(logits, dim=-1)[0]
            
            probs = torch.exp(cons_log_probs)
            next_token_id = torch.multinomial(probs, num_samples=1).item()
            
            total_cons_logprob += cons_log_probs[next_token_id].item()
            total_raw_logprob += raw_log_probs[next_token_id].item()

            num_to_remove, tokens_to_add = ll_interpreter.commit_token(next_token_id)
            
            if num_to_remove > 0:
                token_ids_in_flight = token_ids_in_flight[:-num_to_remove]
            token_ids_in_flight.extend(tokens_to_add)
            
            generated_token_ids.extend(tokens_to_add)

            if ll_interpreter.has_pending_stop():
                break

        generated_tokens_str = [self.hf_tokenizer.decode(token_id) for token_id in generated_token_ids]
        
        log_summary = {
            "result": {
                "tokens": generated_tokens_str,
                "token_ids": generated_token_ids,
                "raw_logprob": total_raw_logprob,
                "cons_logprob": total_cons_logprob
            }
        }

        with open(log_file, "w") as f:
            json.dump(log_summary, f, indent=4)

        generated_text = self.hf_tokenizer.decode(generated_token_ids)
        return generated_text.strip()