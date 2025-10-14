module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op, %arg1: !transform.any_value) {
    transform.yield 
  }
}

