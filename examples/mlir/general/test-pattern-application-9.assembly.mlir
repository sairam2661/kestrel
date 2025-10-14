module {
  func.func @invalid_pattern_application_to_transform_ir() {
    return
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      transform.apply_patterns to %arg0 {
        transform.apply_patterns.canonicalization
      } : !transform.any_op
      transform.yield 
    }
  }
}

