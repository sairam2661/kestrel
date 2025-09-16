"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "testVarResultFail"}> ({
    %0:4 = "testvar.var_result"() : () -> (i16, i32, i64, i64)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

