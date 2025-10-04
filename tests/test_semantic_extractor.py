import sys
import os
import json
from vllm import LLM

sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from semantic_extractor import SemanticExtractor

def test_semantic_extractor():
    print("Testing SemanticExtractor...")
    print("=" * 60)
    
    # Load secrets
    if os.path.exists("secrets.json"):
        with open("secrets.json") as f:
            secrets = json.load(f)
            os.environ["HF_TOKEN"] = secrets.get("HF_TOKEN", "")
    
    # Initialize LLM
    print("Loading LLM (this may take a minute)...")
    llm = LLM(
        model="meta-llama/Llama-3.1-8B-Instruct",
        guided_decoding_backend="guidance"
    )
    print("LLM loaded")
    
    # Initialize extractor
    extractor = SemanticExtractor(llm, tool_name="mlir-opt")
    
    # Load some example MLIR files
    corpus_dir = "examples/mlir/general"
    examples = []
    
    print(f"\nLoading examples from {corpus_dir}...")
    for i, filename in enumerate(os.listdir(corpus_dir)):
        if filename.endswith('.mlir') and i < 10:  # 10 samples for analysis
            filepath = os.path.join(corpus_dir, filename)
            with open(filepath, 'r') as f:
                examples.append(f.read())
            print(f"  Loaded {i+1}: {filename}")
    
    print(f"\nAnalyzing {len(examples)} samples to extract semantic rules...")
    
    # Extract rules (with cache)
    cache_file = ".cache/semantic_rules_test.txt"
    os.makedirs(".cache", exist_ok=True)
    
    rules = extractor.extract_rules(examples, cache_file=cache_file)
    
    print("\n" + "=" * 60)
    print("=== Extracted Semantic Rules ===")
    print("=" * 60)
    print(rules)
    
    # Verify it looks like rules
    print("\n" + "=" * 60)
    print("Validation:")
    checks = [
        ("Contains 'SSA' or 'value'", any(word in rules.lower() for word in ['ssa', 'value'])),
        ("Contains 'type'", 'type' in rules.lower()),
        ("Contains 'region' or 'terminator'", any(word in rules.lower() for word in ['region', 'terminator'])),
        ("Has multiple lines", rules.count('\n') > 3),
        ("Reasonable length", 100 < len(rules) < 3000)
    ]
    
    for check_name, passed in checks:
        status = "Y" if passed else "N"
        print(f"  {status} {check_name}")
    
    all_passed = all(check[1] for check in checks)
    
    print("\n" + "=" * 60)
    if all_passed:
        print("SemanticExtractor test passed!")
    else:
        print("Some validations failed - review output above")
    print("=" * 60)
    
    # Cleanup
    del llm
    import torch
    torch.cuda.empty_cache()
    
    return rules

if __name__ == "__main__":
    test_semantic_extractor()