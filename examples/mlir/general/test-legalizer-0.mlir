"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "verifyDirectPattern"}> ({
    %0 = "test.illegal_op_a"() : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

