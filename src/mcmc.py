import os
import torch
import numpy as np
import gc
import json
import lib
from lib import timestamp
from tqdm import tqdm
import time

class MCMC:
	def __init__(
		self, 
		model: lib.ConstrainedModel, 
		prompt: str, 
		propose_style: str,
		name_prefix: str,
		log_dir: str
	):        
		self.model = model
		prompt = model._format_prompt(prompt)
		self.prompt_ids = model.tokenizer.encode(prompt, return_tensors="pt", add_special_tokens=False).to(model.model.device)
		self.propose_style = propose_style
		self.log_dir = log_dir
		os.makedirs(log_dir, exist_ok=True)
		self.log_dir = f"{log_dir}/{timestamp()}-{name_prefix}-{propose_style}"
		

	def get_sample(self, n_steps: int, max_new_tokens: int):
		gc.collect()
		torch.cuda.empty_cache()

		current_ids, current_scores = self.model._generate(
			self.prompt_ids,
			max_new_tokens=max_new_tokens,
			do_sample=True,
			constraint=True,
			prefix_ids=None,
		)
		current_cons_logprob = self.model._get_seq_logprob_from_scores(current_scores, current_ids).item()
		current_raw_logprob = self.model._get_seq_logprob(self.prompt_ids, current_ids, constraint=False).item()

		steps = []
		sample_file = f"{self.log_dir}/{timestamp(millis=True)}-n{n_steps}.json"
		directory = os.path.dirname(sample_file)
		os.makedirs(directory, exist_ok=True)
  
		for i in range(n_steps):
			step_propose_style = self.propose_style
			if step_propose_style.startswith("mix"):
				_, p = step_propose_style.split("-")
				p = float(p)
				step_propose_style = "restart" if np.random.rand() < p else "priority"
			proposal_ids, proposal_scores, _ = self.model._propose_next_sequence(
				prompt_ids=self.prompt_ids,
				current_ids=current_ids,
				max_new_tokens=max_new_tokens,
				constraint=True,
				current_scores=current_scores,
				propose_style=step_propose_style,
			)
			proposal_raw_logprob = self.model._get_seq_logprob(self.prompt_ids, proposal_ids, constraint=False).item()
			proposal_cons_logprob = self.model._get_seq_logprob_from_scores(proposal_scores, proposal_ids).item()

			acceptance_prob = None
			if torch.equal(current_ids, proposal_ids):
				acceptance_prob = 1
			else:
				prop_logprob_cur_to_next = self.model._propose_next_sequence_logprob(
					current_ids=current_ids,
					current_scores=current_scores,
					next_ids=proposal_ids,
					next_scores=proposal_scores,
					propose_style=step_propose_style,
				)

				prop_logprob_next_to_cur = self.model._propose_next_sequence_logprob(
					current_ids=proposal_ids,
					current_scores=proposal_scores,
					next_ids=current_ids,
					next_scores=current_scores,
					propose_style=step_propose_style,
				)

				log_acc_ratio = proposal_raw_logprob + prop_logprob_next_to_cur - \
					current_raw_logprob - prop_logprob_cur_to_next

				acceptance_prob = min(1, np.exp(log_acc_ratio))
	
			accepted = bool(np.random.rand() < acceptance_prob)

			step = {
				"current": {
					"tokens": [self.model.tokenizer.decode(token_id) for token_id in current_ids[0]],
					"token_ids": [int(id) for id in current_ids[0]],
					"raw_logprob": current_raw_logprob,
					"cons_logprob": current_cons_logprob,
				},
				"proposal": {
					"tokens": [self.model.tokenizer.decode(token_id) for token_id in proposal_ids[0]],
					"token_ids": [int(id) for id in proposal_ids[0]],
					"raw_logprob": proposal_raw_logprob,
					"cons_logprob": proposal_cons_logprob,
				},
				"acceptance_prob": acceptance_prob,
				"accepted": accepted,
			}
			steps.append(step)
			steps_dump = {"steps": steps}
			
			with open(sample_file, "w") as f:
				json.dump(steps_dump, f, indent=4)

			if accepted:
				current_ids = proposal_ids
				current_scores = proposal_scores
				current_cons_logprob = proposal_cons_logprob
				current_raw_logprob = proposal_raw_logprob

		return current_ids

	def get_samples(self, n_samples: int, n_steps: int, max_new_tokens: int):
		for i in tqdm(range(n_samples)):
			sample_start_time = time.time()
			sample = self.get_sample(n_steps, max_new_tokens)
			sample_end_time = time.time()
			sample_time = sample_end_time - sample_start_time
			sample_str = self.model.tokenizer.decode(sample[0])
		