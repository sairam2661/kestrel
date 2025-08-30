import argparse

import os
import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))
from llguidance_model import LLGuidanceGenerator

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run constrained text generation with llguidance.")
    parser.add_argument("config_file", type=str, help="Path to the configuration file.")
    args = parser.parse_args()
    
    generator = LLGuidanceGenerator(args.config_file)
    output = generator.generate()
    print(output)