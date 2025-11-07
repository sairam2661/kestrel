"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>, sym_name = "func"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i16):
      %1 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %2 = "arith.addi"(%1, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (!secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

