"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "test_get_nth_parent"}> ({
    "test.foo"() ({
      "test.foo"() ({
        "test.qux"() ({
          "test.foo"() ({
            "test.bar"() : () -> ()
          }) : () -> ()
        }) : () -> ()
      }) : () -> ()
    }) : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["test.bar"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.get_parent_op"(%0) <{nth_parent = 1 : i64, op_name = "test.foo"}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%1) <{message = "1st parent"}> : (!transform.any_op) -> ()
      %2 = "transform.get_parent_op"(%0) <{nth_parent = 2 : i64, op_name = "test.foo"}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%2) <{message = "2nd parent"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

