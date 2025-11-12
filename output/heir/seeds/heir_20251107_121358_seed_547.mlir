"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "complex_computation"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (i64, i64) -> i1
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = "sgt"}> : (i64, i64) -> i1
    %2 = "arith.select"(%0, %arg0, %arg1) : (i1, i64, i64) -> i64
    %3 = "arith.select"(%1, %arg1, %arg0) : (i1, i64, i64) -> i64
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_flag}> : (i64, i64) -> i64
    %5 = "secret.conceal"(%4) : (i64) -> !secret_secret
    %6 = "secret.generic"(%5) ({
    ^bb1(%arg2: i64):
      %7 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arith_overflow_flag}> : (i64, i64) -> i64
      "secret.yield"(%7) : (i64) -> ()
    }) : (!secret_secret) -> !secret_secret
    %8 = "secret.reveal"(%6) : (!secret_secret) -> i64
    "func.return"(%8) : (i64) -> ()
  }) : () -> ()
}) : () -> ()