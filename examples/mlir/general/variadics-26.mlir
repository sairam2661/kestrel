"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "testOptResultFail"}> ({
    %0:3 = "testvar.opt_result"() : () -> (i16, i64, i64)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

