"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: i8):
    %0 = "math.ctlz"(%arg0) : (i8) -> i8
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

