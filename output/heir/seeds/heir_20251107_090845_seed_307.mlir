"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "secret_add_mult_combination"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i16):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      %2 = "arith.muli"(%1, %arg3) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      %3 = "arith.addi"(%2, %arg2) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()