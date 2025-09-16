"builtin.module"() ({
  "func.func"() <{function_type = (i16) -> (), sym_name = "testOptOperandFail"}> ({
  ^bb0(%arg0: i16):
    "testvar.opt_operand"(%arg0) : (i16) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

