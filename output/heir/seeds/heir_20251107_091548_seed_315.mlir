"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.cmpi"("slt", %arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg0, %arg1) : (i1, i32, i32) -> i32
    %3 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %4 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
    %6 = "scf.for"(%arg0) <{lowerBound = 0 : i32, upperBound = 5 : i32, step = 1 : i32}> ({
    ^bb1(%iv: i32):
      %7 = "arith.addi"(%iv, %arg0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %8 = "arith.muli"(%7, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %9 = "arith.addi"(%5, %8) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%6) : (i32) -> ()
  }) : () -> ()
}) : () -> ()