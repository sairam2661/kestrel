"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %cst1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cst2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %add = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      %mul = "arith.muli"(%add, %cst1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      %sub = "arith.subi"(%mul, %cst2) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      %cmp = "arith.cmpi"(%sub, %cst1, "slt") : (i32, i32) -> i1
      %select = "arith.select"(%cmp, %cst1, %cst2) : (i1, i32, i32) -> i32
      %div = "arith.divsi"(%select, %cst1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      %rem = "arith.remsi"(%div, %cst2) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "tt.return"(%rem) : (i32) -> ()
  }) : () -> i32
}) : () -> ()