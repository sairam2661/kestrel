module {
  func.func @pass_pipeline() {
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.apply_registered_pass "test-options-pass-pipeline" to %0 : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

