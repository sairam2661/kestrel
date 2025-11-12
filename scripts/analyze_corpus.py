import argparse
import os
import sys
import json
from vllm import LLM

sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from corpus_analyzer import CorpusAnalyzer
from semantic_extractor import SemanticExtractor


def main(args):
    print(f"=" * 60)
    print(f"Corpus Analysis for {args.tool_name}")
    print(f"=" * 60)
    
    # Setup cache directory
    cache_dir = os.path.join(".cache", args.output_dir)
    os.makedirs(cache_dir, exist_ok=True)
    
    # Step 1: Syntactic Analysis
    print("\n[1/3] Syntactic Analysis (Parse Tree)")
    print("-" * 60)
    
    analyzer = CorpusAnalyzer(args.grammar_file)
    syntactic_cache = os.path.join(cache_dir, "syntactic_patterns.json")
    
    patterns = analyzer.analyze_corpus(
        corpus_dir=args.corpus_dir,
        cache_file=syntactic_cache
    )
    
    print(analyzer.get_summary())
    
    # Step 2: Select Diverse Examples
    print("\n[2/3] Selecting Diverse Examples")
    print("-" * 60)
    
    diverse_examples = analyzer.select_diverse_examples(n=args.num_analysis_samples)
    
    # Load full code for selected examples
    example_codes = []
    for template in diverse_examples:
        # Extract code from template (it's stored as snippet)
        code_snippet = template.get('code_snippet', '')
        
        # Find the full file by matching snippet
        for filename in os.listdir(args.corpus_dir):
            if filename.endswith('.mlir'):
                filepath = os.path.join(args.corpus_dir, filename)
                with open(filepath, 'r') as f:
                    content = f.read()
                    if code_snippet[:-5] in content:
                        example_codes.append(content)
                        print(f"  Selected: {filename} ({template['complexity_class']})")
                        break
    
    # Step 3: Semantic Rule Extraction
    print("\n[3/3] Semantic Rule Extraction (LLM Analysis)")
    print("-" * 60)
    
    # Load LLM for analysis
    print(f"Loading LLM: {args.model_name}")
    
    # Load HF token if available
    if os.path.exists("secrets.json"):
        with open("secrets.json") as f:
            secrets = json.load(f)
            os.environ["HF_TOKEN"] = secrets.get("HF_TOKEN", "")
    
    llm = LLM(
        model=args.model_name,
        guided_decoding_backend="guidance"
    )
    
    extractor = SemanticExtractor(llm, args.tool_name)
    semantic_cache = os.path.join(cache_dir, "semantic_rules.txt")
    
    semantic_rules = extractor.extract_rules(
        examples=example_codes[:args.num_analysis_samples],
        cache_file=semantic_cache
    )
    
    print("\nExtracted Semantic Rules:")
    print("-" * 60)
    print(semantic_rules)
    
    # Optional: Extract operation patterns
    if args.extract_operations:
        print("\n[BONUS] Operation Pattern Extraction")
        print("-" * 60)
        
        top_operations = [op for op, _ in patterns['statistics']['top_operations'][:20]]
        op_cache = os.path.join(cache_dir, "operation_patterns.json")
        
        op_patterns = extractor.extract_operation_patterns(
            examples=example_codes,
            operations=top_operations,
            cache_file=op_cache
        )
        
        print(f"Extracted patterns for {len(op_patterns)} operations")
    
    # Save summary
    summary = {
        'tool_name': args.tool_name,
        'corpus_dir': args.corpus_dir,
        'total_files': patterns['total_files'],
        'parsed_successfully': patterns['parsed_successfully'],
        'cache_files': {
            'syntactic': syntactic_cache,
            'semantic': semantic_cache,
            'operations': op_cache if args.extract_operations else None
        },
        'top_dialects': patterns['statistics']['top_dialects'][:10],
        'analysis_samples_used': len(example_codes)
    }
    
    summary_file = os.path.join(cache_dir, "analysis_summary.json")
    with open(summary_file, 'w') as f:
        json.dump(summary, f, indent=2)
    
    print("\n" + "=" * 60)
    print(f"Analysis Complete!")
    print(f"Cache directory: {cache_dir}")
    print(f"Summary saved to: {summary_file}")
    print("=" * 60)
    
    # Cleanup
    del llm
    import torch
    torch.cuda.empty_cache()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Analyze MLIR corpus and extract fuzzing knowledge"
    )
    
    parser.add_argument(
        "corpus_dir",
        type=str,
        help="Directory containing .mlir seed files"
    )
    
    parser.add_argument(
        "tool_name",
        type=str,
        help="Target tool name (e.g., mlir-opt, circt-opt)"
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
        help="Model name for semantic analysis"
    )
    
    parser.add_argument(
        "--num-analysis-samples",
        type=int,
        default=10,
        help="Number of samples to use for semantic rule extraction"
    )
    
    parser.add_argument(
        "--output-dir",
        type=str,
        default="output",
        help="Output directory for cache files"
    )
    
    parser.add_argument(
        "--extract-operations",
        action="store_true",
        help="Also extract operation-specific patterns (slower)"
    )
    
    args = parser.parse_args()
    main(args)