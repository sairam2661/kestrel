module {
  func.func @verify_success(%arg0: f64) -> f64 {
    return %arg0 : f64
  }
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %0 = transform.structured.match ops{["func.func"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      transform.verify %0 : !transform.any_op
      transform.yield 
    }
  }
}

