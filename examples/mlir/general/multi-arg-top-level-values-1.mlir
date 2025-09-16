"builtin.module"() ({
  %0:2 = "test.some_returning_op"() : () -> (i32, i64)
  %1 = "test.some_returning_op"() : () -> index
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op, !transform.any_op, !transform.any_value) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op, %arg1: !transform.any_op, %arg2: !transform.any_value):
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

