module attributes {transform.with_named_sequence} {
  func.func @invalid_target_op_type() {
    return
  }
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
    %1 = transform.apply_registered_pass "duplicate-function-elimination" to %0 : (!transform.any_op) -> !transform.any_op
    transform.yield 
  }
}

