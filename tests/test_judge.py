import sys
import os
from vllm import LLM

sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from judge import CodeJudge

def test_judge_vllm():
    print("Testing CodeJudge (vLLM + JSON Schema)")
    print("=" * 60)
    
    # Load LLM once, share with judge
    print("Loading vLLM...")
    llm = LLM(
        model="meta-llama/Llama-3.1-8B-Instruct",
        guided_decoding_backend="guidance"
    )
    print("LLM loaded")
    
    # Initialize judge with shared LLM
    print("Initializing judge...")
    judge = CodeJudge(llm=llm, max_new_tokens=512)
    print("Judge initialized")
    
    # Test cases
    test_cases = [
        {
            "name": "Valid MLIR - Simple Function",
            "code": '''
"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "add"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()
''',
            "expected": "> 0.7"
        },
        {
            "name": "Invalid - Type Mismatch",
            "code": '''
"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "bad"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg1) : (i32, f32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()
''',
            "expected": "< 0.5"
        },
        {
            "name": "Invalid - Undefined SSA Value",
            "code": '''
"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "undefined"}> ({
  ^bb0(%arg0: i32):
    %1 = "arith.addi"(%0, %arg0) : (i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()
''',
            "expected": "< 0.5"
        }
    ]
    
    print("\n" + "=" * 60)
    print("Running Test Cases")
    print("=" * 60)
    
    results = []
    
    for i, test in enumerate(test_cases):
        print(f"\n--- Test {i+1}: {test['name']} ---")
        
        feedback = judge.get_detailed_feedback(test['code'])
        
        print(f"Score: {feedback['score']:.2f} | Valid: {feedback['is_valid']} | Expected: {test['expected']}")
        print(f"Inconsistencies: {len(feedback['inconsistencies'])}")
        
        for inc in feedback['inconsistencies']:
            severity_symbol = {"Negligible": "○", "Small": "△", "Major": "▲", "Fatal": "■"}
            symbol = severity_symbol.get(inc['severity'], "?")
            print(f"  {symbol} [{inc['severity']}] {inc['inconsistency']}")
        
        results.append(feedback)
    
    # Summary
    print("\n" + "=" * 60)
    print("Summary")
    print("=" * 60)
    
    for i, (test, result) in enumerate(zip(test_cases, results)):
        expected_met = (
            ("> 0.7" in test['expected'] and result['score'] > 0.7) or
            ("< 0.5" in test['expected'] and result['score'] < 0.5)
        )
        status = "" if expected_met else "✗"
        print(f"{status} {test['name']}: {result['score']:.2f}")
    
    print("\n" + "=" * 60)
    print("CodeJudge vLLM test complete!")
    print("=" * 60)
    
    # Cleanup
    del llm
    import torch
    torch.cuda.empty_cache()

if __name__ == "__main__":
    test_judge_vllm()