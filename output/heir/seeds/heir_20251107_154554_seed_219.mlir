"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflow_modeany}> : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %arg2) <{overflowFlags = #arith_overflow_modeany}> : (i32, i32) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_modeany}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %0) <{overflowFlags = #arith_overflow_modeany}> : (i32, i32) -> i32
    %6 = "arith.subi"(%5, %arg0) <{overflowFlags = #arith_overflow_modeany}> : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()