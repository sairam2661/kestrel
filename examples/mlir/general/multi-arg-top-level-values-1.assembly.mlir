module {
  %0:2 = "test.some_returning_op"() : () -> (i32, i64)
  %1 = "test.some_returning_op"() : () -> index
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op, %arg1: !transform.any_op, %arg2: !transform.any_value) {
      transform.yield 
    }
  }
}

