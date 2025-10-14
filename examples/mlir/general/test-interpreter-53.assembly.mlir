module attributes {transform.with_named_sequence} {
  transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
    %0 = transform.test_produce_param(0 : i32) : !transform.param<i64>
    transform.yield 
  }
}

