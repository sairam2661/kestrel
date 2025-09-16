"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "testVarResultFail"}> ({
    %0:3 = "testvar.var_result"() : () -> (i16, i64, i64)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

