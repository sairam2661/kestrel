"builtin.module"() ({
  %0:2 = "test.some_returning_op"() : () -> (i32, i64)
  %1 = "test.some_returning_op"() : () -> index
  %2:2 = "test.some_other_returning_op"() : () -> (f32, f64)
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op, !transform.any_value, !transform.any_value) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op, %arg1: !transform.any_value, %arg2: !transform.any_value):
      "transform.debug.emit_remark_at"(%arg1) <{message = "first extra"}> : (!transform.any_value) -> ()
      "transform.debug.emit_remark_at"(%arg2) <{message = "second extra"}> : (!transform.any_value) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

