"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "recursively_legal_invalid_op"}> ({
    "builtin.module"() ({
      %1 = "test.illegal_op_f"() : () -> i32
    }) {test.recursively_legal} : () -> ()
    "builtin.module"() ({
      "func.func"() <{function_type = (i64) -> (), sym_name = "dynamic_func"}> ({
      ^bb0(%arg0: i64):
        %0 = "test.illegal_op_f"() : () -> i32
        "test.return"() : () -> ()
      }) {test.recursively_legal} : () -> ()
    }) : () -> ()
    "test.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

