import argparse
import time
import os
import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))
from llg_model import LLGuidanceGenerator
from judge import CodeJudge

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run constrained text generation with llguidance.")
    parser.add_argument("--config_file", type=str, required=True, help="Path to the configuration file.")
    parser.add_argument("--num_samples", type=int, default=5, help="Number of samples to generate.")
    parser.add_argument("--output_dir", type=str, default="samples/mlir", help="Directory to save generated samples.")
    args = parser.parse_args()

    print("Initializing generator...")
    generator = LLGuidanceGenerator(args.config_file)
    cj = CodeJudge()
    
    os.makedirs(args.output_dir, exist_ok=True)
    print(f"Output will be saved to '{args.output_dir}' directory.")
    
    total_time = 0

    for i in range(args.num_samples):
        print(f"Sample {i+1}/{args.num_samples}:")
        
        start_time = time.perf_counter()
        final_result = generator.generate()

        isValid = cj.get_score(final_result)
        
        ## LLM as a judge 
        end_time = time.perf_counter()
        elapsed_time = end_time - start_time
        total_time += elapsed_time
        
        print(f"Generation finished in {elapsed_time:.2f} seconds.")
        if isValid:
            file_path = os.path.join(args.output_dir, f"sample_{i+1}.mlir")
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(final_result)
            
            print(f"Saved sample to {file_path}")
        else:
            print(f"Sample did not pass validation checks")

    print("Summary:")
    print(f"Total samples generated: {args.num_samples}")
    print(f"Total time taken: {total_time:.2f} seconds")
    if args.num_samples > 0:
        avg_time = total_time / args.num_samples
        print(f"Average time per sample: {avg_time:.2f} seconds")