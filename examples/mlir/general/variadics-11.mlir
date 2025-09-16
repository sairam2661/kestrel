"builtin.module"() ({
  "func.func"() <{function_type = (i16, i64) -> (), sym_name = "testMultOperandsMissingSegment"}> ({
  ^bb0(%arg0: i16, %arg1: i64):
    "testvar.var_and_opt_operand"(%arg0, %arg0, %arg1) : (i16, i16, i64) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

