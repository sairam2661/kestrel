"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
    %3 = "arith.select"(%2, %1, %arg0) : (i1, i32, i32) -> i32
    %4 = "arith.muli"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "scf.for"() <{lowerBound = 0 : i32, upperBound = 5 : i32, step = 1 : i32}> ({
    ^bb0(%iv: i32):
      %6 = "arith.addi"(%4, %iv) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> (i32)
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()