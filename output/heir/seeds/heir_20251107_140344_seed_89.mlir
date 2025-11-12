"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 200 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_mode_wrap}> : (i32, i32) -> i32
    %3 = "arith.subi"(%arg1, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (i64, i64) -> i64
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_mode_wrap}> : (i32, i64) -> i64
    %5 = "arith.addi"(%4, %3) <{overflowFlags = #arith_overflow_mode_wrap}> : (i64, i64) -> i64
    %6 = "arith.subi"(%5, %4) <{overflowFlags = #arith_overflow_mode_wrap}> : (i64, i64) -> i64
    %7 = "arith.muli"(%6, %2) <{overflowFlags = #arith_overflow_mode_wrap}> : (i64, i32) -> i64
    %8 = "arith.addi"(%7, %arg0) <{overflowFlags = #arith_overflow_mode_wrap}> : (i64, i32) -> i64
    %9 = "arith.subi"(%8, %arg1) <{overflowFlags = #arith_overflow_mode_wrap}> : (i64, i64) -> i64
    "func.return"(%2, %9) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()