"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "scalar_mul"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %1 = "arith.constant"() <{value = 2 : i16}> : () -> i16
      %2 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

