module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_produce_null_param : !transform.param<i64>
    transform.yield 
  }
}

