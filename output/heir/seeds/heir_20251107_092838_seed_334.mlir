"builtin.module"() ({
  "func.func"() <{function_type = (i8, i16, i32, i64) -> (i8, i16, i32, i64), sym_name = "test_mixed_int_ops"}> ({
  ^bb0(%arg0: i8, %arg1: i16, %arg2: i32, %arg3: i64):
    %0 = "arith.constant"() <{value = 42 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 24 : i16}> : () -> i16
    %2 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 6 : i64}> : () -> i64

    %4 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %5 = "arith.subi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %6 = "arith.muli"(%arg2, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.divsi"(%arg3, %3) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64

    %8 = "arith.addi"(%4, %arg0) <{overflowFlags = #arith_overflownone}> : (i8, i8) -> i8
    %9 = "arith.subi"(%5, %arg1) <{overflowFlags = #arith_overflownone}> : (i16, i16) -> i16
    %10 = "arith.muli"(%6, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "arith.divsi"(%7, %arg3) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64

    "func.return"(%8, %9, %10, %11) : (i8, i16, i32, i64) -> ()
  }) : () -> ()
}) : () -> ()