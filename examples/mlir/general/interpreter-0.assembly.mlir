module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op {transform.readonly}) {
    transform.test_transform_op
    transform.yield 
  }
  transform.named_sequence @entry_point(%arg0: !transform.any_op {transform.readonly}) {
    transform.test_transform_op
    transform.yield 
  }
}

