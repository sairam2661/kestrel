"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_arith_and_secret"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.muli"(%1, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "secret.conceal"(%2) <{bitWidth = 128}> : (i32) -> !secret_secret
    %4 = "secret.generic"(%3) ({
    ^bb0(%arg2: i32):
      %5 = "arith.subi"(%arg2, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "secret.yield"(%6) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret
    %7 = "secret.reveal"(%4) : (!secret_secret) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()