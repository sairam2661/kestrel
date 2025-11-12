"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i64, !secret_secret_i64) -> !secret_secret_i64, sym_name = "secret_complexity"}> ({
  ^bb0(%arg0: !secret_secret_i64, %arg1: !secret_secret_i64):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i64, %arg3: i64):
      %1 = "arith.constant"() <{value = 5 : i64}> : () -> i64
      %2 = "arith.addi"(%arg2, %1) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
      %3 = "arith.subi"(%arg3, %2) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
      %4 = "arith.muli"(%3, %arg2) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
      "secret.yield"(%4) : (i64) -> ()
    }) : (!secret_secret_i64, !secret_secret_i64) -> !secret_secret_i64
    "func.return"(%0) : (!secret_secret_i64) -> ()
  }) : () -> ()
}) : () -> ()