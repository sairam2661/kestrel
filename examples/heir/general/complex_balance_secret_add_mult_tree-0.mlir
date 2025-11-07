"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>, sym_name = "complex_balance_secret_add_mult_tree"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: !secret.secret<i16>, %arg2: !secret.secret<i16>, %arg3: !secret.secret<i16>, %arg4: !secret.secret<i16>, %arg5: !secret.secret<i16>, %arg6: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6) ({
    ^bb0(%arg7: i16, %arg8: i16, %arg9: i16, %arg10: i16, %arg11: i16, %arg12: i16, %arg13: i16):
      %1 = "arith.addi"(%arg7, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %2 = "arith.addi"(%1, %arg9) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %3 = "arith.addi"(%2, %arg10) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %4 = "arith.muli"(%3, %arg11) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %5 = "arith.muli"(%4, %arg12) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %6 = "arith.muli"(%5, %arg13) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%6) : (i16) -> ()
    }) : (!secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>, !secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

