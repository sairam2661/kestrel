"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret, i32) -> (!secret_secret, i32), sym_name = "complexOp"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i32):
      %4 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.addi"(%4, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "secret.yield"(%5) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret
    "func.return"(%3, %2) : (!secret_secret, i32) -> ()
  }) : () -> ()
}) : () -> ()