"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32, i32) -> i32, sym_name = "complex_op_chain"}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %c6_i32 = "arith.constant"() <{value = 6 : i32}> : () -> i32
      %c7_i32 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      
      %add1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %sel1 = "arith.select"(%arg2, %add1, %c0_i32) : (i32, i32, i32) -> i32
      %xor1 = "arith.xori"(%sel1, %c1_i32) : (i32, i32) -> i32
      %add2 = "arith.addi"(%xor1, %arg2) : (i32, i32) -> i32
      %rem1 = "arith.remsi"(%add2, %c2_i32) : (i32, i32) -> i32
      %xor2 = "arith.xori"(%rem1, %c3_i32) : (i32, i32) -> i32
      %add3 = "arith.addi"(%xor2, %arg0) : (i32, i32) -> i32
      %sel2 = "arith.select"(%arg1, %add3, %c4_i32) : (i32, i32, i32) -> i32
      %xor3 = "arith.xori"(%sel2, %c5_i32) : (i32, i32) -> i32
      %add4 = "arith.addi"(%xor3, %arg2) : (i32, i32) -> i32
      %rem2 = "arith.remsi"(%add4, %c6_i32) : (i32, i32) -> i32
      
      "tt.return"(%rem2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()