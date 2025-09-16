"builtin.module"() ({
  "func.func"() <{function_type = (i16, i64, i64) -> (), sym_name = "testVarOperandFail"}> ({
  ^bb0(%arg0: i16, %arg1: i64, %arg2: i64):
    "testvar.var_operand"(%arg0, %arg1, %arg2) : (i16, i64, i64) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

