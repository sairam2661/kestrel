"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "erase_tracked_op"}> ({
    "test.container"() ({
      %2 = "test.erase_op"() {replace_with_new_op = "test.foo"} : () -> i32
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["test.container"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%arg0) <{ops = ["test.erase_op"]}> : (!transform.any_op) -> !transform.any_op
      "transform.debug.emit_remark_at"(%1) <{message = "matched op"}> : (!transform.any_op) -> ()
      "transform.apply_patterns"(%0) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
        "transform.apply_patterns.transform.test_patterns"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.debug.emit_remark_at"(%1) <{message = "op was deleted"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

