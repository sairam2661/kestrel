import sys
import os

sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from judge import CodeJudge

def test_judge():
    print("Testing CodeJudge...")
    
    # Initialize judge
    judge = CodeJudge(
        model_name="meta-llama/Llama-3.1-8B-Instruct",
        max_new_tokens=512
    )
    
    # Test with valid MLIR code
    valid_code = """
func.func @add(%arg0: i32, %arg1: i32) -> i32 {
  %0 = arith.addi %arg0, %arg1 : i32
  func.return %0 : i32
}
"""
    
    # Test with invalid MLIR code (type mismatch)
    invalid_code = """
func.func @bad(%arg0: i32, %arg1: f32) -> i32 {
  %0 = arith.addi %arg0, %arg1 : i32
  func.return %0 : i32
}
"""
    
    print("\n=== Testing Valid Code ===")
    feedback = judge.get_detailed_feedback(valid_code)
    print(f"Score: {feedback['score']:.2f}")
    print(f"Valid: {feedback['is_valid']}")
    print(f"Inconsistencies: {feedback['inconsistencies']}")
    
    print("\n=== Testing Invalid Code ===")
    feedback = judge.get_detailed_feedback(invalid_code)
    print(f"Score: {feedback['score']:.2f}")
    print(f"Valid: {feedback['is_valid']}")
    print(f"Inconsistencies: {feedback['inconsistencies']}")
    
    print("\n CodeJudge test passed!")
    
    # Cleanup
    del judge
    import torch
    torch.cuda.empty_cache()

if __name__ == "__main__":
    test_judge()