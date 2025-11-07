"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>, sym_name = "simple_balance_secret_mult_tree"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: !secret.secret<i16>, %arg2: !secret.secret<i16>, %arg3: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16):
      %1 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %2 = "arith.muli"(%1, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %3 = "arith.muli"(%2, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

