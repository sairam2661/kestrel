"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i8) -> i8, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i8):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %1 = "arith.extui"(%arg2) : (i8) -> i32
    %2 = "arith.shli"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.shrui"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.subi"(%arg1, %4) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %7 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %8 = "arith.cmpi"(%6, %7) <{predicate = "slt"}> : (i32, i32) -> i1
    %9 = "arith.select"(%8, %arg2, %1) : (i1, i8, i32) -> i8
    "func.return"(%9) : (i8) -> ()
  }) : () -> ()
}) : () -> ()