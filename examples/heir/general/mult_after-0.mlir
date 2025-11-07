"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "mult"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %1 = "arith.muli"(%arg1, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %3 = "arith.muli"(%2, %2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

