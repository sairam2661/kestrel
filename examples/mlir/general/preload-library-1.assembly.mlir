module attributes {transform.with_named_sequence} {
  transform.named_sequence @private_helper(%arg0: !transform.any_op {transform.readonly}) {
    transform.test_transform_op
    transform.yield 
  }
}

