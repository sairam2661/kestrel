"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "mixed_operations"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c16_i32 = "arith.constant"() <{value = 16 : i32}> : () -> i32
      %c32_i32 = "arith.constant"() <{value = 32 : i32}> : () -> i32

      %add1 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %xor1 = "arith.xori"(%add1, %c16_i32) : (i32, i32) -> i32
      %select1 = "arith.select"(%xor1, %c1_i32, %c0_i32) : (i32, i32, i32) -> i32
      %rem1 = "arith.remsi"(%select1, %c32_i32) : (i32, i32) -> i32

      %add2 = "arith.addi"(%rem1, %c2_i32) : (i32, i32) -> i32
      %xor2 = "arith.xori"(%add2, %c16_i32) : (i32, i32) -> i32
      %select2 = "arith.select"(%xor2, %c1_i32, %c0_i32) : (i32, i32, i32) -> i32
      %rem2 = "arith.remsi"(%select2, %c32_i32) : (i32, i32) -> i32

      "tt.return"(%rem2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()