"builtin.module"() ({
  "tt.func"() <{function_type = (i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32):
      %const1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %const2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %add1 = "arith.addi"(%arg0, %const1) <{overflowFlags = #arith_overflow_flag}> : (i32, i32) -> i32
      %sub1 = "arith.subi"(%add1, %const2) <{overflowFlags = #arith_overflow_flag}> : (i32, i32) -> i32
      %cmp1 = "arith.cmpi"(%sub1, %const1, "slt") : (i32, i32) -> i1
      %select1 = "arith.select"(%cmp1, %sub1, %arg0) : (i1, i32, i32) -> i32
      %div1 = "arith.divsi"(%select1, %const2) <{overflowFlags = #arith_overflow_flag}> : (i32, i32) -> i32
      %mod1 = "arith.remsi"(%select1, %const2) <{overflowFlags = #arith_overflow_flag}> : (i32, i32) -> i32
      %xor1 = "arith.xori"(%div1, %mod1) : (i32, i32) -> i32
      "tt.return"(%xor1) : (i32) -> i32
  }) : (i32) -> i32
}) : () -> ()