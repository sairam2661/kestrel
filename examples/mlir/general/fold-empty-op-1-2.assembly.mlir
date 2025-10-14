module {
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.op<"func.func">
      transform.apply_patterns to %0 {
        transform.apply_patterns.tensor.fold_tensor_empty
      } : !transform.op<"func.func">
      transform.yield 
    }
  }
  func.func @concats_of_empty(%arg0: index, %arg1: index, %arg2: index, %arg3: index) -> tensor<5x?x?xf32> {
    %0 = tensor.empty(%arg0, %arg1) : tensor<5x?x?xf32>
    %1 = tensor.empty(%arg2, %arg3) : tensor<5x?x?xf32>
    %concat = tensor.concat dim(1) %0, %1 : (tensor<5x?x?xf32>, tensor<5x?x?xf32>) -> tensor<5x?x?xf32>
    return %concat : tensor<5x?x?xf32>
  }
}

