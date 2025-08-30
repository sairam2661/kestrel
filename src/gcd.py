import os
import torch
import configparser

from mcmc import MCMC
from lib import ConstrainedModel

class GCD:
    def __init__(self, config_path: str):
        config = configparser.ConfigParser()
        config.read(config_path)
        experiment_config = config['Generation']
        
        model_id = experiment_config.get('model_name')
        self.log_dir = experiment_config.get('log_dir')
        self.n_samples = experiment_config.getint('n_samples')
        self.n_steps = experiment_config.getint('n_steps')
        self.max_new_tokens = experiment_config.getint('max_new_tokens')
        self.propose_style = experiment_config.get('propose_style')
        self.prompt_file = experiment_config.get('prompt_file')
        self.grammar_file = experiment_config.get('ebnf_grammar_file')
        
        self.model = ConstrainedModel(model_id, None, torch_dtype=torch.bfloat16)
        os.makedirs(self.log_dir, exist_ok=True)
        
        self.prompt = open(self.prompt_file).read().strip()
        self.grammar_str = open(self.grammar_file).read()
        
    def sample(self):
        self.model._set_grammar_constraint(self.grammar_str)
        mcmc = MCMC(
            model=self.model, 
            prompt=self.prompt, 
            propose_style=self.propose_style,
            name_prefix="gcd",
            log_dir=self.log_dir
        )
        mcmc.get_samples(self.n_samples, self.n_steps, self.max_new_tokens)