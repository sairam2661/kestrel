import sys
import os
import json
from vllm import LLM

sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from semantic_extractor import SemanticExtractor

def test_semantic_extractor():
    print("Testing SemanticExtractor...")
    
    # Load secrets
    if os.path.exists("secrets.json"):
        with open("secrets.json") as f:
            secrets = json.load(f)
            os.environ["HF_TOKEN"] = secrets.get("HF_TOKEN", "")
    
    # Initialize LLM
    print("Loading LLM...")
    llm = LLM(
        model="meta-llama/Llama-3.1-8B-Instruct",
        guided_decoding_backend="guidance"
    )
    
    # Initialize extractor
    extractor = SemanticExtractor(llm, tool_name="mlir-opt")
    
    # Load some example MLIR files
    corpus_dir = "examples/mlir/general"
    examples = []
    
    for filename in os.listdir(corpus_dir)[:5]:  # Just 5 for testing
        if filename.endswith('.mlir'):
            with open(os.path.join(corpus_dir, filename), 'r') as f:
                examples.append(f.read())
    
    print(f"\nAnalyzing {len(examples)} samples...")
    
    # Extract rules
    rules = extractor.extract_rules(examples, cache_file=None)
    
    print("\n=== Extracted Semantic Rules ===")
    print(rules)
    
    print("\nSemanticExtractor test passed!")
    
    # Cleanup
    del llm
    import torch
    torch.cuda.empty_cache()
    
    return rules

if __name__ == "__main__":
    test_semantic_extractor()