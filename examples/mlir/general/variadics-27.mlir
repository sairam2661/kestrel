"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "testOptResultFail"}> ({
    %0:4 = "testvar.opt_result"() : () -> (i16, i32, i32, i64)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

