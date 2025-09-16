"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "verifyLargerBenefit"}> ({
    %0 = "test.illegal_op_c"() : () -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

