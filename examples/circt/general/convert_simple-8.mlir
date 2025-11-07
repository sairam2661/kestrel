"builtin.module"() ({
  "func.func"() <{function_type = (i4) -> (i8, i8), sym_name = "main"}> ({
  ^bb0(%arg0: i4):
    %0 = "arith.extui"(%arg0) : (i4) -> i8
    %1 = "arith.extsi"(%arg0) : (i4) -> i8
    "func.return"(%0, %1) : (i8, i8) -> ()
  }) : () -> ()
}) : () -> ()

