"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> (), sym_name = "ipowi"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "math.ipowi"(%arg0, %arg1) : (i8, i8) -> i8
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

