"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i2>) -> !secret.secret<i2>, sym_name = "output_order"}> ({
  ^bb0(%arg0: !secret.secret<i2>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i2):
      %1 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i2, i2) -> i2
      "secret.yield"(%1) : (i2) -> ()
    }) : (!secret.secret<i2>) -> !secret.secret<i2>
    "func.return"(%0) : (!secret.secret<i2>) -> ()
  }) : () -> ()
}) : () -> ()

