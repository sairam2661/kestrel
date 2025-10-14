module {
  func.func @map_forall_to_blocks_not_gpu_launch() {
    %0 = tensor.empty() : tensor<4xf32>
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
      %0 = transform.structured.match ops{["tensor.empty"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.gpu.map_forall_to_blocks %0 : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

