"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRET_0, !secret_SECRET_1) -> !secret_SECRET_2, sym_name = "complex_op"}> ({
  ^bb0(%arg0: !secret_SECRET_0, %arg1: !secret_SECRET_1):
    %2 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i64, %arg3: i64):
      %3 = "arith.cmpi"(%arg2, %arg3, "ult") <{resultElementType = i1}> : (i64, i64) -> i1
      %4 = "arith.select"(%3, %arg2, %arg3) <{resultElementType = i64}> : (i1, i64, i64) -> i64
      %5 = "arith.addi"(%4, %4) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
      "secret.yield"(%5) : (i64) -> ()
    }) : (!secret_SECRET_0, !secret_SECRET_1) -> !secret_SECRET_2
    "func.return"(%2) : (!secret_SECRET_2) -> ()
  }) : () -> ()
}) : () -> ()