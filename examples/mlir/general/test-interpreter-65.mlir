"builtin.module"() ({
  %0:2 = "test.get_two_results"() : () -> (i32, i32)
  %1:3 = "test.get_three_results"() : () -> (i32, i32, f32)
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %2 = "transform.structured.match"(%arg0) <{ops = ["test.get_two_results", "test.get_three_results"]}> : (!transform.any_op) -> !transform.any_op
      %3 = "transform.test_produce_value_handle_to_result"(%2) <{number = 1 : i64}> : (!transform.any_op) -> !transform.any_value
      "transform.debug.emit_remark_at"(%3) <{message = "result handle"}> : (!transform.any_value) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

