module {
  %0:2 = "test.get_two_results"() : () -> (i32, i32)
  %1:3 = "test.get_three_results"() : () -> (i32, i32, f32)
  module attributes {transform.with_named_sequence} {
    transform.named_sequence @__transform_main(%arg0: !transform.any_op) {
      %2 = transform.structured.match ops{["test.get_two_results", "test.get_three_results"]} in %arg0 : (!transform.any_op) -> !transform.any_op
      %3 = transform.test_produce_value_handle_to_result %2, 1 : (!transform.any_op) -> !transform.any_value
      transform.debug.emit_remark_at %3, "result handle" : !transform.any_value
      transform.yield 
    }
  }
}

