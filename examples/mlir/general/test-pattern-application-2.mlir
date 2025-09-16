"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "replacement_op_not_found"}> ({
    "test.container"() ({
      %2 = "test.foo"() {replace_with_new_op = "test.bar"} : () -> i32
    }) : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "builtin.module"() ({
    "transform.named_sequence"() <{function_type = (!transform.any_op) -> (), sym_name = "__transform_main"}> ({
    ^bb0(%arg0: !transform.any_op):
      %0 = "transform.structured.match"(%arg0) <{ops = ["test.container"]}> : (!transform.any_op) -> !transform.any_op
      %1 = "transform.structured.match"(%arg0) <{ops = ["test.foo"]}> : (!transform.any_op) -> !transform.any_op
      "transform.apply_patterns"(%0) <{max_iterations = -1 : i64, max_num_rewrites = -1 : i64}> ({
        "transform.apply_patterns.transform.test_patterns"() : () -> ()
      }) : (!transform.any_op) -> ()
      "transform.annotate"(%1) <{name = "annotated"}> : (!transform.any_op) -> ()
      "transform.yield"() : () -> ()
    }) : () -> ()
  }) {transform.with_named_sequence} : () -> ()
}) : () -> ()

