import argparse
import time
import os
import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))
from llguidance_model import LLGuidanceGenerator
import timeit

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run constrained text generation with llguidance.")
    parser.add_argument("--config_file", type=str, help="Path to the configuration file.")
    args = parser.parse_args()
    generator = LLGuidanceGenerator(args.config_file)
    start = time.time()
    final_result = ""

    print("Generating...")
    for partial_output in generator.generate():
        # Print the latest full output, overwriting the previous line
        print(f"  {partial_output}", end='\r', flush=True) 
        final_result = partial_output

    # Print a newline at the end to move to the next line
    print("\n\nGeneration Complete.")
    print("Final Output:")
    print(final_result)
    t = time.time() - start
    print(f"Time taken: {t} seconds")