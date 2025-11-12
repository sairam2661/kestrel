"builtin.module"() ({
  "func.func"() <{function_type = (!secret
  , !secret, !secret, !secret) -> (!secret, !secret), sym_name = "complex_secret_mult"}> ({
  ^bb0(%arg0: !secret, %arg1: !secret, %arg2: !secret, %arg3: !secret):
    %0:2 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16):
      %1 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith
  , overflowFlags = #arith_overflowFlags}> : (i16, i16) -> i16
      %2 = "arith.muli"(%1, %arg6) <{overflowFlags = #arith
  , overflowFlags = #arith_overflowFlags}> : (i16, i16) -> i16
      %3 = "arith.muli"(%2, %arg7) <{overflowFlags = #arith
  , overflowFlags = #arith_overflowFlags}> : (i16, i16) -> i16
      "secret.yield"(%2, %3) : (i16, i16) -> ()
    }) : (!secret, !secret, !secret, !secret) -> (!secret, !secret)
    "func.return"(%0#0, %0#1) : (!secret, !secret) -> ()
  }) : () -> ()
}) : () -> ()