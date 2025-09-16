"builtin.module"() ({
  "func.func"() <{function_type = (i16, i32, i64) -> (), sym_name = "testOptOperand"}> ({
  ^bb0(%arg0: i16, %arg1: i32, %arg2: i64):
    "testvar.opt_operand"(%arg0, %arg2) : (i16, i64) -> ()
    "testvar.opt_operand"(%arg0, %arg1, %arg2) : (i16, i32, i64) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

