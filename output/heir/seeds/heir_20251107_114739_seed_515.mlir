"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, i32) -> i32
    %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %2) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %4 = "arith.addi"(%3, %3) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %6 = "arith.addi"(%5, %5) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()