"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !tfhe_rust_secret) -> !secret_secret, sym_name = "complex_secret_op"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !tfhe_rust_secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i16, %arg3: i16):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
      %2 = "arith.select"(%1, %arg2, %arg3) : (i16, i16, i16) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (!secret_secret, !tfhe_rust_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()