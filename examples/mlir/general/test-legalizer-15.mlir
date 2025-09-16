"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "fail_to_convert_illegal_op"}> ({
    %0 = "test.illegal_op_f"() : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

