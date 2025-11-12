"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %4 = "arith.divi"(%3, %arg1) <{overflowFlags = #arith_overflowFlags}> : (i32, i32) -> i32
      %5 = "arith.remsi"(%4, %arg0) : (i32, i32) -> i32
      "func.return"(%3, %5) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()