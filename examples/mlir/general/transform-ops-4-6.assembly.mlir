module {
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["tensor.empty"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.cast %0 : !transform.any_op to !transform.op<"tensor.empty">
      %2 = transform.bufferization.empty_tensor_to_alloc_tensor %1 : (!transform.op<"tensor.empty">) -> !transform.op<"bufferization.alloc_tensor">
      transform.yield 
    }
  }
  func.func @empty_to_tensor_alloc() -> tensor<2x2xf32> {
    %0 = tensor.empty() : tensor<2x2xf32>
    return %0 : tensor<2x2xf32>
  }
}

