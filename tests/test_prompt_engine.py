import sys
import os
import json
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from prompt_engine import PromptEngine
from grammar_utils import extract_subgrammar

def test_prompt_engine():
    print("Testing PromptEngine with Dynamic Operation Sampling...")
    print("=" * 60)
    
    # Load cached corpus analysis
    cache_file = ".cache/corpus_analyzer.json"
    
    if not os.path.exists(cache_file):
        print(f"Error: Cache file not found: {cache_file}")
        print("Run test_corpus_analyzer.py first to generate the cache.")
        return
    
    print(f"Loading cached analysis from: {cache_file}")
    with open(cache_file, 'r') as f:
        cached_data = json.load(f)
    
    # Reconstruct syntactic_patterns format
    syntactic_patterns = {
        'total_files': cached_data.get('total_files', 0),
        'parsed_successfully': cached_data.get('parsed_successfully', 0),
        'statistics': {
            'top_dialects': list(cached_data.get('dialects', {}).items())[:10],
            'top_operations': list(cached_data.get('operations', {}).items())[:50],  # Get more for stratification
            'top_types': list(cached_data.get('type_patterns', {}).items())[:15],
            'avg_ops_per_file': cached_data.get('statistics', {}).get('avg_ops_per_file', 5.8),
            'avg_region_depth': cached_data.get('statistics', {}).get('avg_region_depth', 2.2),
            'complexity_distribution': cached_data.get('statistics', {}).get('complexity_distribution', {})
        }
    }
    
    print(f" Loaded analysis for {syntactic_patterns['total_files']} files")
    print(f"  Top dialects: {[d[0] for d in syntactic_patterns['statistics']['top_dialects'][:5]]}")
    
    # Mock semantic rules
    semantic_rules = """**Semantic Validity Rules for mlir-opt:**
1. All SSA values must be defined before use within their scope
2. Operation inputs and outputs must have matching types
3. All regions must end with proper terminators (func.return, scf.yield, etc.)
4. Symbol references (@func_name) must be declared before use
5. Each SSA value (%0, %1, etc.) must be defined exactly once
6. Type attributes must match the operation's requirements
7. Regions must be properly nested and closed
8. All operands must be valid SSA values or constants"""
    
    # Load grammar
    print("\nLoading grammar...")
    with open("grammars/mlir.lark", 'r') as f:
        grammar = f.read()
    print(f"Grammar loaded ({len(grammar)} chars)")
    
    # Create engine
    print("\nInitializing PromptEngine...")
    engine = PromptEngine(
        tool_name="mlir-opt",
        syntactic_patterns=syntactic_patterns,
        semantic_rules=semantic_rules,
        full_grammar=grammar
    )
    print(f"Engine initialized")
    print(f"Operation pools: common={len(engine.common_ops)}, medium={len(engine.medium_ops)}, rare={len(engine.rare_ops)}")
    
    # Load few-shot examples from corpus
    print("\nLoading few-shot examples...")
    corpus_dir = "examples/mlir/general"
    few_shot = []
    
    for i, filename in enumerate(os.listdir(corpus_dir)):
        if filename.endswith('.mlir') and i < 3:
            filepath = os.path.join(corpus_dir, filename)
            with open(filepath, 'r') as f:
                code = f.read()
                subgrammar = extract_subgrammar(grammar, code)
                
                few_shot.append({
                    'code': code,
                    'subgrammar': subgrammar,
                    'template': {
                        'dialects_used': ['func', 'arith'],
                        'complexity_class': 'medium',
                        'control_flow_type': 'simple'
                    }
                })
            print(f"  Loaded example {i+1}: {filename}")
    
    # Test all 4 rotation strategies
    print("\n" + "=" * 60)
    print("Testing Operation Rotation Strategies")
    print("=" * 60)
    
    for round_num in range(4):
        print(f"\n--- Round {round_num}: refresh_counter={engine.refresh_counter} ---")
        
        messages = engine.create_fuzzing_prompt(
            few_shot_examples=few_shot,
            focus_dialects=['arith', 'scf'] if round_num % 2 == 0 else None
        )
        
        user_msg = messages[1]['content']
        
        # Extract and show operation section
        if "**Focus:" in user_msg:
            start = user_msg.index("**Focus:")
            end = user_msg.index("\n\n", start + 200) if "\n\n" in user_msg[start+200:] else start + 500
            ops_section = user_msg[start:end]
            print(ops_section)
        
        print(f"Counter after generation: {engine.refresh_counter}")
    
    # Test with specific dialect focus
    print("\n" + "=" * 60)
    print("Test: Dialect-Focused Generation (tosa)")
    print("=" * 60)
    
    messages_tosa = engine.create_fuzzing_prompt(
        few_shot_examples=few_shot,
        focus_dialects=['tosa']
    )
    
    user_msg_tosa = messages_tosa[1]['content']
    if "**Focus:" in user_msg_tosa:
        start = user_msg_tosa.index("**Focus:")
        end = user_msg_tosa.index("\n\n", start + 200) if "\n\n" in user_msg_tosa[start+200:] else start + 500
        print(user_msg_tosa[start:end])
    
    print("\n" + "=" * 60)
    print(" PromptEngine dynamic sampling test passed!")
    print("=" * 60)
    
    return engine

if __name__ == "__main__":
    test_prompt_engine()