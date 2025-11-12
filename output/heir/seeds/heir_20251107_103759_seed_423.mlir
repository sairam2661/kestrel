"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret, !secret_secret) -> !secret_secret, sym_name = "stress_test"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret, %arg2: !secret_secret):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "secret.conceal"(%arg0) : (!secret_secret) -> !secret_secret
    %3 = "secret.conceal"(%arg1) : (!secret_secret) -> !secret_secret
    %4 = "secret.conceal"(%arg2) : (!secret_secret) -> !secret_secret
    %5 = "secret.generic"(%2, %3, %4) ({
    ^bb1(%arg3: !secret_secret, %arg4: !secret_secret, %arg5: !secret_secret):
      %6 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (!secret_secret, !secret_secret) -> !secret_secret
      %7 = "arith.addi"(%6, %arg5) <{overflowFlags = #arith_overflow_none}> : (!secret_secret, !secret_secret) -> !secret_secret
      "secret.yield"(%7) : (!secret_secret) -> ()
    }) : (!secret_secret, !secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%5) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()