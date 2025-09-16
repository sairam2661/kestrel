"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "create_unregistered_op_in_pattern"}> ({
    %0 = "test.illegal_op_g"() : () -> i32
    "test.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

