import json
import os
import torch
import numpy as np
import gc
import datetime
from transformers import AutoModelForCausalLM, AutoTokenizer, AutoConfig, GenerationConfig
from transformers.generation.logits_process import LogitsProcessorList, InfNanRemoveLogitsProcessor
from transformers_cfg.grammar_utils import IncrementalGrammarConstraint
from transformers_cfg.generation.logits_process import GrammarConstrainedLogitsProcessor

class ConstrainedModel:
	HF_CHAT_MODELS = [
		"meta-llama/Llama-3.1-8B-Instruct"
	]
	
	HF_BASE_MODELS = []
	
	def __init__(self, model_id: str, grammar_str: str, **kwargs):
		with open("secrets.json") as f:
			secrets = json.load(f)
			os.environ["HF_TOKEN"] = secrets["HF_TOKEN"]
		
		self.model_id = model_id
		self.tokenizer = AutoTokenizer.from_pretrained(model_id)
		self.tokenizer.pad_token = self.tokenizer.eos_token
		device_map = "auto"
		
		self.model = AutoModelForCausalLM.from_pretrained(model_id, device_map=device_map, **kwargs)
		self.model.eval()
		
	def _set_grammar_constraint(self, grammar_str: str):
		self.grammar_constraint = IncrementalGrammarConstraint(grammar_str, "root", self.tokenizer)
		
	def _format_prompt(self, prompt: str) -> str:
		if self.model_id in self.HF_BASE_MODELS:
			return prompt
		elif self.model_id in self.HF_CHAT_MODELS:
			messages = [
				{"role": "user", "content": prompt}
			]
			formatted_prompt = self.tokenizer.apply_chat_template(messages, tokenize=False, add_generation_prompt=True)
			return formatted_prompt

	def _generate(
		self, 
		input_ids: torch.Tensor, 
		max_new_tokens: int,
		do_sample: bool,
		constraint: bool,
		prefix_ids: torch.Tensor | None,
		num_return_sequences: int = 1,
	) -> tuple[torch.Tensor, torch.Tensor]:
		generation_config = GenerationConfig(
			max_new_tokens=max_new_tokens,
			num_return_sequences=num_return_sequences,
			do_sample=do_sample,
			eos_token_id=self.tokenizer.eos_token_id,
			pad_token_id=self.tokenizer.eos_token_id,
			return_dict_in_generate=True,
			output_scores=True,
		)

		gcd_logits_processor = None
		if constraint:
			self.grammar_constraint.reset()
			if prefix_ids is not None:
				gcd_logits_processor = GrammarConstrainedLogitsProcessor(self.grammar_constraint, len(input_ids[0]))
			else:
				gcd_logits_processor = GrammarConstrainedLogitsProcessor(self.grammar_constraint)

		logits_processor_list = []
		logits_processor_list.append(InfNanRemoveLogitsProcessor())
		if gcd_logits_processor is not None:
			logits_processor_list = [gcd_logits_processor] + logits_processor_list
		logits_processor_list = LogitsProcessorList(logits_processor_list)

		input_prefix_ids = input_ids
		if prefix_ids is not None:
			input_prefix_ids = torch.cat([input_ids, prefix_ids], dim=-1)
   
		attention_mask = torch.ones_like(input_prefix_ids)

		output = self.model.generate(
			input_prefix_ids,
			generation_config=generation_config,
			attention_mask=attention_mask,
			tokenizer=self.tokenizer,
			logits_processor=logits_processor_list,
		)

		output_ids = output.sequences
		output_ids = output_ids[:, input_prefix_ids.shape[1]:]
		output_scores = torch.stack(output.scores, dim=1)
		assert output_ids.shape[1] == output_scores.shape[1]

		return output_ids, output_scores

	def generate(
		self,
		prompt: str,
		max_new_tokens: int,
		do_sample: bool,
		constraint: bool = False,
		prefix: str | None = None,
	):
		prompt = self._format_prompt(prompt)
		input_str = prompt
		if prefix:
			input_str += prefix

		# We do this to make sure the prefix is tokenized the same way as it would be produced
		# Ideally we could just encode the prefix but that does not work directly with some tokenizers
		input_ids = self.tokenizer.encode(input_str, return_tensors="pt", add_special_tokens=False).to(self.model.device)
		prompt_ids = self.tokenizer.encode(prompt, return_tensors="pt", add_special_tokens=False).to(self.model.device)
		prefix_ids = None
		
		if prefix:
			prefix_ids = input_ids[:, prompt_ids.shape[1]:]
		
		output_ids, _ = self._generate(prompt_ids, max_new_tokens, do_sample, constraint, prefix_ids)
		output_str = self.tokenizer.decode(output_ids[0], skip_special_tokens=False)
		return output_str

	def _get_seq_logprob_from_scores(self, scores: torch.Tensor, query_ids: torch.Tensor) -> torch.Tensor:
		assert scores.shape[0] == query_ids.shape[0], "Batch sizes must match"
		assert scores.shape[1] == query_ids.shape[1], "Sequence lengths must match"
	
		logprobs = torch.log_softmax(scores, dim=-1)
	
		batch_size, seq_len = query_ids.shape
		result = torch.zeros(batch_size, device=scores.device)

		for i in range(batch_size):
			seq_token_logprobs = logprobs[i, torch.arange(seq_len), query_ids[i]]
			eos_mask = query_ids[i] == self.tokenizer.eos_token_id
			eos_positions = torch.nonzero(eos_mask)

			if eos_positions.shape[0] > 0:
				first_eos_pos = eos_positions[0].item()
				result[i] = seq_token_logprobs[:first_eos_pos + 1].sum()
			else:
				result[i] = seq_token_logprobs.sum()
	
		return result

	def _get_generation_scores(
		self,
		prompt_ids: torch.Tensor,
		query_ids: torch.Tensor,
		constraint: bool = False,
		prefix_ids: torch.Tensor | None = None,
	) -> torch.Tensor:

		if prompt_ids.shape[0] == 1:
			prompt_ids = prompt_ids.repeat(query_ids.shape[0], 1)

		if prefix_ids is not None:
			input_ids = torch.cat([prompt_ids, prefix_ids, query_ids], dim=-1)
			prompt_prefix_len = prompt_ids.shape[1] + prefix_ids.shape[1]
		else:
			input_ids = torch.cat([prompt_ids, query_ids], dim=-1)
			prompt_prefix_len = prompt_ids.shape[1]

		with torch.no_grad():
			outputs = self.model(input_ids, return_dict=True)

		all_logits = outputs.logits
		scores = all_logits[:, prompt_prefix_len-1:prompt_prefix_len+query_ids.shape[1]-1, :]

		if constraint:
			self.grammar_constraint.reset()
			logits_processor = GrammarConstrainedLogitsProcessor(self.grammar_constraint, 0)
			modified_scores = []

			if prefix_ids is not None:
				current_ids = prefix_ids.clone()
			else:
				current_ids = torch.empty((query_ids.shape[0], 0), dtype=torch.long).to(self.model.device)
			
			for i in range(query_ids.shape[1]):
				current_step_logits = scores[:, i, :].clone()
				constrained_logits = logits_processor(current_ids, current_step_logits)
				modified_scores.append(constrained_logits)
				
				current_ids = torch.cat([current_ids, query_ids[:, i:i+1]], dim=-1)
			
			modified_scores = torch.stack(modified_scores, dim=1)
			scores = modified_scores
		
		assert scores.shape[1] == query_ids.shape[1]
		
		del outputs
		gc.collect()
		torch.cuda.empty_cache()
		
		return scores

	def _get_seq_logprob(
		self, 
		prompt_ids: torch.Tensor,
		query_ids: torch.Tensor,
		constraint: bool = False,
		prefix_ids: torch.Tensor | None = None,     
	) -> torch.Tensor:
		
		scores = self._get_generation_scores(prompt_ids, query_ids, constraint, prefix_ids)
		logprob = self._get_seq_logprob_from_scores(scores, query_ids)
		return logprob
	
	def _resample_idx_distribution(
		self,
		propose_style: str,
		current_ids: torch.Tensor,
		current_scores: torch.Tensor,
	) -> torch.Tensor:
	
		if propose_style == "restart":
			resample_distr = torch.zeros(len(current_ids[0]), dtype=torch.float32)
			resample_distr[0] = 1.0
			resample_distr = torch.unsqueeze(resample_distr, 0)
		elif propose_style == "prefix":
			resample_distr = torch.ones(len(current_ids[0])) / len(current_ids[0])
			resample_distr = torch.unsqueeze(resample_distr, 0)
		elif propose_style == "priority":
			current_logprobs = torch.log_softmax(current_scores, dim=-1)
			mask = torch.isfinite(current_logprobs)
			probs = torch.exp(current_logprobs)
			masked_contribution = torch.where(mask, probs * current_logprobs, torch.zeros_like(probs))
			current_entropies = -torch.sum(masked_contribution, dim=-1)
			resample_distr = torch.exp(current_entropies) - 1
			resample_distr = resample_distr / torch.sum(resample_distr)
		else:
			raise ValueError(f"Unknown proposal style: {propose_style}")

		assert resample_distr.shape == current_ids.shape
		assert torch.allclose(resample_distr.sum(), torch.tensor(1.0))
		return resample_distr
	
	def _propose_next_sequence_logprob(
		self,
		current_ids: torch.Tensor,
		current_scores: torch.Tensor,
		next_ids: torch.Tensor,
		next_scores: torch.Tensor,
		propose_style: str
	) -> float:
		resample_idx_distr = self._resample_idx_distribution(
			propose_style, current_ids, current_scores
		)
		lcp_idx = 0
		for i, (p, c) in enumerate(zip(next_ids[0], current_ids[0])):
			if p == c:
				lcp_idx += 1
			else:
				break
		max_resample_idx = lcp_idx + 1
		max_resample_idx = min(max_resample_idx, len(current_ids[0]))
		proposal_logprob = -np.inf

		for i in range(max_resample_idx):
			idx_resample_prob = resample_idx_distr[0][i].item()

			if idx_resample_prob == 0:
				continue

			idx_resample_logprob = np.log(idx_resample_prob)
			suffix_ids = next_ids[:, i:]
			suffix_scores = next_scores[:, i:]
			suffix_logprob = self._get_seq_logprob_from_scores(suffix_scores, suffix_ids).item()			
			proposal_logprob = np.logaddexp(proposal_logprob, idx_resample_logprob + suffix_logprob)

		return proposal_logprob
	
	def _propose_next_sequence(
		self,
		prompt_ids: torch.Tensor,
		current_ids: torch.Tensor,
		max_new_tokens: int,
		constraint: bool,
		current_scores: torch.Tensor | None,
		propose_style: str,
	) -> tuple[torch.Tensor, torch.Tensor, float]:
		assert current_ids.shape[0] == 1
		if propose_style not in ["prefix", "priority", "restart"]:
			raise ValueError(f"Unknown proposal style: {propose_style}")
		
		if current_scores is None:
			current_scores = self._get_generation_scores(prompt_ids, current_ids, constraint)

		resample_idx_distr = self._resample_idx_distribution(
			propose_style, current_ids, current_scores
		) 
		resample_idx = np.random.choice(len(current_ids[0]), p=resample_idx_distr[0].cpu().numpy())
		prefix_ids = current_ids[:, :resample_idx]
		prefix_scores = current_scores[:, :resample_idx]
		resample_ids, resample_scores = self._generate(
			prompt_ids,
			max_new_tokens,
			do_sample=True,
			constraint=constraint,
			prefix_ids=prefix_ids,
		)

		next_ids = torch.cat([prefix_ids, resample_ids], dim=-1)
		next_scores = torch.cat([prefix_scores, resample_scores], dim=1)

		proposal_logprob = self._propose_next_sequence_logprob(
			current_ids=current_ids,
			current_scores=current_scores,
			next_ids=next_ids,
			next_scores=next_scores,
			propose_style=propose_style,
		)

		return next_ids, next_scores, proposal_logprob

def timestamp(millis=False):
    if millis:
        return datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S-%f")
    else:
        return datetime.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")