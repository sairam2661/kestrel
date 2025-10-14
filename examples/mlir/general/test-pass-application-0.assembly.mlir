module {
  func.func @successful_pass_application(%arg0: tensor<5xf32>) -> index {
    %c0 = arith.constant 0 : index
    %dim = tensor.dim %arg0, %c0 : tensor<5xf32>
    return %dim : index
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.apply_registered_pass "canonicalize" to %0 : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

