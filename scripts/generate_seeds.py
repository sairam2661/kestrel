import argparse
import json
import os
import random
import time
from datetime import datetime
import sys

from vllm import LLM, SamplingParams
from vllm.sampling_params import GuidedDecodingParams
import torch

sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from corpus_analyzer import CorpusAnalyzer
from prompt_engine import PromptEngine
from grammar_utils import extract_subgrammar
from judge import CodeJudge


def load_cached_analysis(cache_dir: str, tool_name: str):
    tool_cache = os.path.join(cache_dir, tool_name)
    
    syntactic_file = os.path.join(tool_cache, "syntactic_patterns.json")
    if not os.path.exists(syntactic_file):
        raise FileNotFoundError(
            f"No cached analysis found for {tool_name}. "
            f"Run analyze_corpus.py first!"
        )
    
    with open(syntactic_file, 'r') as f:
        syntactic_patterns = json.load(f)
    
    semantic_file = os.path.join(tool_cache, "semantic_rules.txt")
    if not os.path.exists(semantic_file):
        raise FileNotFoundError(f"Semantic rules not found: {semantic_file}")
    
    with open(semantic_file, 'r') as f:
        semantic_rules = f.read()
    
    return syntactic_patterns, semantic_rules


def main(args):
    if os.path.exists("secrets.json"):
        with open("secrets.json") as f:
            secrets = json.load(f)
            os.environ["HF_TOKEN"] = secrets.get("HF_TOKEN", "")
    
    print(f"Loading analysis for {args.tool_name}...")
    cache_dir = os.path.join(args.cache_dir, "cache")
    syntactic_patterns, semantic_rules = load_cached_analysis(cache_dir, args.tool_name)
    
    print(f" Loaded syntactic patterns ({syntactic_patterns['total_files']} files analyzed)")
    print(f" Loaded semantic rules")
    
    with open(args.grammar_file, 'r') as f:
        grammar_str = f.read().strip()
    
    all_examples = [
        os.path.join(args.corpus_dir, f) 
        for f in os.listdir(args.corpus_dir) 
        if f.endswith('.mlir')
    ]
    
    print(f" Loaded {len(all_examples)} corpus files")
    
    print(f"\nLoading generator model: {args.model_name}")
    llm = LLM(
        model=args.model_name,
        guided_decoding_backend="guidance"
    )
    tokenizer = llm.get_tokenizer()
    print(" Model loaded")
    
    judge = None
    if args.filter_with_judge:
        print(f"\nInitializing judge (sharing LLM)...")
        judge = CodeJudge(llm=llm, max_new_tokens=512)
        print(" Judge initialized")
    
    prompt_engine = PromptEngine(
        tool_name=args.tool_name,
        syntactic_patterns=syntactic_patterns,
        semantic_rules=semantic_rules,
        full_grammar=grammar_str
    )
    
    output_dir = args.output_dir
    os.makedirs(output_dir, exist_ok=True)
    
    total_generated = 0
    total_accepted = 0
    start_time = time.time()
    
    num_to_generate = args.num_samples
    prompt_refresh_interval = args.prompt_refresh_interval
    
    print(f"\n{'='*60}")
    print(f"Generating {num_to_generate} seeds for {args.tool_name}")
    print(f"{'='*60}\n")
    
    for i in range(0, num_to_generate, prompt_refresh_interval):
        batch_size = min(prompt_refresh_interval, num_to_generate - i)
        
        print(f"Batch {i//prompt_refresh_interval + 1}: Generating {batch_size} samples...")
        
        num_few_shot = args.num_few_shot
        selected_files = random.sample(all_examples, min(num_few_shot, len(all_examples)))
        
        few_shot_examples = []
        for filepath in selected_files:
            with open(filepath, 'r') as f:
                content = f.read()
                subgrammar = extract_subgrammar(grammar_str, content)
                
                few_shot_examples.append({
                    'code': content,
                    'subgrammar': subgrammar,
                    'template': {'dialects_used': [], 'complexity_class': 'unknown'}
                })
        
        focus_dialects = None
        if args.focus_dialects:
            focus_dialects = [d.strip() for d in args.focus_dialects.split(',')]
        
        messages = prompt_engine.create_fuzzing_prompt(
            few_shot_examples=few_shot_examples,
            focus_dialects=focus_dialects
        )
        
        formatted_prompt = tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
        
        sampling_params = SamplingParams(
            max_tokens=args.max_new_tokens,
            temperature=args.temperature,
            guided_decoding=GuidedDecodingParams(grammar=grammar_str)
        )
        
        prompts_batch = [formatted_prompt] * batch_size
        batch_outputs = llm.generate(prompts_batch, sampling_params, use_tqdm=True)
        
        total_generated += len(batch_outputs)
        
        print(f"  Evaluating {len(batch_outputs)} samples...")
        
        for batch_idx, output in enumerate(batch_outputs):
            result_text = output.outputs[0].text
            
            if judge:
                score = judge.get_score(result_text)
                
                if score < args.quality_threshold:
                    print(f"  ✗ Sample {i + batch_idx + 1} rejected (score: {score:.2f})")
                    continue
            
            sample_num = total_accepted + 1
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            filename = f"{args.tool_name}_{timestamp}_seed_{sample_num}.mlir"
            filepath = os.path.join(output_dir, filename)
            
            with open(filepath, 'w') as f:
                f.write(result_text)
            
            total_accepted += 1
            
            if judge:
                print(f"   Sample {i + batch_idx + 1} accepted (score: {score:.2f})")
            else:
                print(f"   Sample {i + batch_idx + 1} saved")
    
    total_time = time.time() - start_time
    acceptance_rate = (total_accepted / total_generated * 100) if total_generated > 0 else 0
    
    print(f"\n{'='*60}")
    print(f"Generation Complete!")
    print(f"{'='*60}")
    print(f"Total generated: {total_generated}")
    print(f"Total accepted: {total_accepted}")
    print(f"Acceptance rate: {acceptance_rate:.1f}%")
    print(f"Output directory: {output_dir}")
    if total_accepted > 0:
        print(f"Total time: {total_time:.2f}s ({total_time/total_accepted:.2f}s per accepted seed)")
    print(f"{'='*60}")
    
    print("\nCleaning up...")
    del llm
    torch.cuda.empty_cache()
    print("Done!")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Generate MLIR fuzzer seeds using self-bootstrapping pipeline"
    )
    
    parser.add_argument(
        "corpus_dir",
        type=str,
        help="Directory containing seed .mlir files"
    )
    
    parser.add_argument(
        "tool_name",
        type=str,
        help="Target tool (must have cached analysis)"
    )
    
    parser.add_argument(
        "--grammar-file",
        type=str,
        default="grammars/mlir.lark",
        help="Path to MLIR grammar file"
    )
    
    parser.add_argument(
        "--model-name",
        type=str,
        default="meta-llama/Llama-3.1-8B-Instruct",
        help="Generator model name"
    )
    
    parser.add_argument(
        "--num-samples",
        type=int,
        default=1000,
        help="Number of seeds to generate"
    )
    
    parser.add_argument(
        "--num-few-shot",
        type=int,
        default=3,
        help="Number of few-shot examples per prompt"
    )
    
    parser.add_argument(
        "--prompt-refresh-interval",
        type=int,
        default=10,
        help="Refresh prompt every N samples"
    )
    
    parser.add_argument(
        "--max-new-tokens",
        type=int,
        default=2048,
        help="Max tokens for generation"
    )
    
    parser.add_argument(
        "--temperature",
        type=float,
        default=0.8,
        help="Sampling temperature"
    )
    
    parser.add_argument(
        "--filter-with-judge",
        action="store_true",
        help="Filter generated seeds with judge"
    )
    
    parser.add_argument(
        "--quality-threshold",
        type=float,
        default=0.6,
        help="Minimum judge score to accept (if filtering)"
    )
    
    parser.add_argument(
        "--focus-dialects",
        type=str,
        default=None,
        help="Comma-separated dialects to prioritize (e.g., 'arith,scf')"
    )
    
    parser.add_argument(
        "--cache-dir",
        type=str,
        default=".cache",
        help="Directory containing cached analysis"
    )
    
    parser.add_argument(
        "--output-dir",
        type=str,
        default="output/seeds",
        help="Output directory for generated seeds"
    )
    
    args = parser.parse_args()
    main(args)