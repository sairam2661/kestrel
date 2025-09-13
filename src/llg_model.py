import llguidance
import llguidance.hf
import json
import torch
import numpy as np
import configparser
from transformers import AutoModelForCausalLM, AutoTokenizer
from typing import Generator

class LLGuidanceGenerator:
    def __init__(self, config_path: str):
        self._load_config(config_path)
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
        self.hf_tokenizer = AutoTokenizer.from_pretrained(self.model_name)
        self.model = AutoModelForCausalLM.from_pretrained(
            self.model_name,
            device_map="auto",
        )
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
            enable_ff_tokens=True,
            enable_backtrack=True,
            log_level=1,
        )

    def gen_streaming(self) -> Generator[str, None, None]:
        max_length = self.max_new_tokens + len(self.tokenizer.tokenize_str(self.prompt_text))
        
        ll_interpreter = self.interpreter
        
        input_ids = self.tokenizer.tokenize_str(self.prompt_text)
        processed_prompt = ll_interpreter.process_prompt(input_ids)
        generated_tokens = processed_prompt.copy()
        current_length = len(generated_tokens)
        
        while current_length < max_length:
            mask_bytes, json_str = ll_interpreter.compute_mask()
            
            if mask_bytes is None:
                break
            
            mask = np.frombuffer(mask_bytes, dtype=np.uint8).astype(bool)
                
            inputs = torch.tensor([generated_tokens], device=self.device)
            with torch.no_grad():
                logits = self.model(inputs).logits[:, -1, :]
    
            logits[0][~mask] = float('-inf')
            
            probs = torch.softmax(logits, dim=-1)
            next_token = torch.multinomial(probs, num_samples=1).item()
            
            num_to_remove, tokens_to_add = ll_interpreter.commit_token(next_token)
            
            if num_to_remove > 0:
                generated_tokens = generated_tokens[:-num_to_remove]
            generated_tokens.extend(tokens_to_add)
            current_length = len(generated_tokens)
    
            current_output = self.tokenizer.decode_str(generated_tokens[len(input_ids):])
            yield current_output

            if ll_interpreter.has_pending_stop():
                break
            
    def generate(self) -> str:
        max_length = self.max_new_tokens + len(self.tokenizer.tokenize_str(self.prompt_text))
        
        ll_interpreter = self.interpreter
        
        input_ids = self.tokenizer.tokenize_str(self.prompt_text)
        processed_prompt = ll_interpreter.process_prompt(input_ids)
        generated_tokens = processed_prompt.copy()
        current_length = len(generated_tokens)
        
        while current_length < max_length:
            mask_bytes, json_str = ll_interpreter.compute_mask()
            
            if mask_bytes is None:
                break
            
            mask = np.frombuffer(mask_bytes, dtype=np.uint8)
            mask = mask.astype(bool)
                
            inputs = torch.tensor([generated_tokens], device=self.device)
            with torch.no_grad():
                logits = self.model(inputs).logits[:, -1, :]
    
            logits[0][~mask] = float('-inf')
            
            probs = torch.softmax(logits, dim=-1)
            next_token = torch.multinomial(probs, num_samples=1).item()
            
            num_to_remove, tokens_to_add = ll_interpreter.commit_token(next_token)
            
            if num_to_remove > 0:
                generated_tokens = generated_tokens[:-num_to_remove]
            generated_tokens.extend(tokens_to_add)
            current_length = len(generated_tokens)
    
            if ll_interpreter.has_pending_stop():
                break
                
        generated_text = self.tokenizer.decode_str(generated_tokens[(len(input_ids)):])
        return generated_text