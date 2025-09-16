"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (), sym_name = "testSingleOperandFail"}> ({
  ^bb0(%arg0: i32):
    "testvar.single_operand"(%arg0, %arg0) : (i32, i32) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

