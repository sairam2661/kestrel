module attributes {transform.with_named_sequence} {
  transform.named_sequence @transform(%arg0: !transform.any_op) {
    transform.yield 
  }
}

