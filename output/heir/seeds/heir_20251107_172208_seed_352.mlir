"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_bitwise_add"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : i32
    %1 = "arith.constant"() <{value = 100 : i64}> : i64
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_none}> : (i64, i64) -> i64
    %4 = "arith.cmpi"(%2, %0, "slt") : (i32, i32) -> i1
    %5 = "arith.select"(%4, %2, %0) : (i1, i32, i32) -> i32
    %6 = "arith.cmpi"(%3, %1, "slt") : (i64, i64) -> i1
    %7 = "arith.select"(%6, %3, %1) : (i1, i64, i64) -> i64
    "func.return"(%5, %7) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()