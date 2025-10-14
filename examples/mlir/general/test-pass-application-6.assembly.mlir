module {
  func.func @valid_pass_options() {
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %1 = transform.apply_registered_pass "canonicalize" with options = {"test-convergence" = true, "top-down" = false} to %0 : (!transform.any_op) -> !transform.any_op
      transform.yield 
    }
  }
}

