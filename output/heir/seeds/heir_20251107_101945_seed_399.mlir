"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, !secret_secret) -> !secret_secret, sym_name = "combine_secrets"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %arg2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %3 = "arith.cmpi"("slt", %2, %arg3) : (i32, i32) -> i1
      %4 = "arith.select"(%3, %arg2, %arg3) : (i1, i32, i32) -> i32
      "secret.yield"(%4) : (i32) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()