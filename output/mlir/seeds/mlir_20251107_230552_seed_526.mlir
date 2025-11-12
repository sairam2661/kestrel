"builtin.module"() ({
  "func.func"() <{function_type = () -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0:
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %c6_i32 = "arith.constant"() <{value = 6 : i32}> : () -> i32
      %c7_i32 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      %c8_i32 = "arith.constant"() <{value = 8 : i32}> : () -> i32
      %c9_i32 = "arith.constant"() <{value = 9 : i32}> : () -> i32
      %cmp1 = "arith.cmpi"(%c1_i32, %c2_i32) <{predicate = "slt"}> : (i32, i32) -> i1
      %cmp2 = "arith.cmpi"(%c2_i32, %c3_i32) <{predicate = "sgt"}> : (i32, i32) -> i1
      %add1 = "arith.addi"(%c3_i32, %c4_i32) : (i32, i32) -> i32
      %add2 = "arith.addi"(%c5_i32, %c6_i32) : (i32, i32) -> i32
      %cmp3 = "arith.cmpi"(%add1, %add2) <{predicate = "eq"}> : (i32, i32) -> i1
      %add3 = "arith.addi"(%add1, %add2) : (i32, i32) -> i32
      %cmp4 = "arith.cmpi"(%add3, %c7_i32) <{predicate = "slt"}> : (i32, i32) -> i1
      %add4 = "arith.addi"(%c8_i32, %c9_i32) : (i32, i32) -> i32
      %cmp5 = "arith.cmpi"(%add4, %c0_i32) <{predicate = "sgt"}> : (i32, i32) -> i1
      "func.return"(%add4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()