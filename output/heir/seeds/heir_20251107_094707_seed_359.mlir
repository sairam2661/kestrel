"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "multiply_and_add"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflowFlags}> : (i64, i64) -> i64
    %2 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflowFlags}> : (i64, i64) -> i64
    "scf.for"(%arg0, %arg1) <{lowerBound = 0 : i64, upperBound = 10 : i64, step = 1 : i64}> ({
    ^bb1(%iv: i64, %arg1: i64):
      %3 = "arith.addi"(%iv, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i64, i64) -> i64
      "scf.yield"(%3) : (i64) -> ()
    }) : (i64, i64) -> (i64)
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()