"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (), sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags} > : (i32, i32) -> i32
    %3 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.divsi"(%4, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.remsi"(%4, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %7 = "arith.cmpi"(%5, %6, "slt") : (i32, i32, i1) -> i1
    %8 = "arith.select"(%7, %arg0, %arg1) : (i1, i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : () -> ()
}) : () -> ()