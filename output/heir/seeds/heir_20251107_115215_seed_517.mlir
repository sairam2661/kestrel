"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %1 = "arith.muli"(%arg2, %arg0) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflow_mode}> : (i32, i32) -> i32
    %3 = "arith.extsi"(%2, 64) : (i32) -> i64
    %4 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_mode}> : (i64, i64) -> i64
    %6 = "arith.trunci"(%5, 32) : (i64) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()