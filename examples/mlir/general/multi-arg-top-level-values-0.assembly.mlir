module {
  %0:2 = "test.some_returning_op"() : () -> (i32, i64)
  %1 = "test.some_returning_op"() : () -> index
  %2:2 = "test.some_other_returning_op"() : () -> (f32, f64)
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op, %arg1: !transform.any_value, %arg2: !transform.any_value) {
      transform.debug.emit_remark_at %arg1, "first extra" : !transform.any_value
      transform.debug.emit_remark_at %arg2, "second extra" : !transform.any_value
      transform.yield 
    }
  }
}

