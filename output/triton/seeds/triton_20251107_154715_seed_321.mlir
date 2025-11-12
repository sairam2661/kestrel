"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.muli"(%2, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.divsi"(%3, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.remsi"(%4, %arg1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%arg0, %arg1, "sgt") : (i32, i32) -> i1
    %7 = "arith.select"(%arg0, %arg1, %5) : (i32, i32, i32) -> i32
    %8 = "arith.xori"(%arg0, %arg1) : (i32, i32) -> i32
    "tt.return"(%8) : (i32) -> ()
  }) : (i32, i32) -> i32
}) : () -> ()