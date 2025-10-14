module {
  func.func @apply_dce(%arg0: f32, %arg1: memref<5xf32>, %arg2: index) {
    %0 = tensor.empty() : tensor<5xf32>
    memref.store %arg0, %arg1[%arg2] : memref<5xf32>
    %inserted = tensor.insert %arg0 into %0[%arg2] : tensor<5xf32>
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.structured.match ops{["tensor.empty"]} in %0 : (!transform.any_op) -> !transform.any_op
      transform.apply_dce to %0 : !transform.any_op
      %2 = transform.num_associations %1 : (!transform.any_op) -> !transform.param<i64>
      transform.debug.emit_param_as_remark %2 : !transform.param<i64>
      transform.yield 
    }
  }
}

