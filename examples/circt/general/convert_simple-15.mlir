"builtin.module"() ({
  "func.func"() <{function_type = (si32, si32, i1) -> si32, sym_name = "main"}> ({
  ^bb0(%arg0: si32, %arg1: si32, %arg2: i1):
    %0 = "arith.select"(%arg2, %arg0, %arg1) : (i1, si32, si32) -> si32
    "func.return"(%0) : (si32) -> ()
  }) : () -> ()
}) : () -> ()

