"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>, sym_name = "tensor_mad", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<32xi32>, %arg1: tensor<32xi32>):
      %cst0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %cst1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cst2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %cst3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %cst4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %cst5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
      %cst6_i32 = "arith.constant"() <{value = 6 : i32}> : () -> i32
      %cst7_i32 = "arith.constant"() <{value = 7 : i32}> : () -> i32
      %cst8_i32 = "arith.constant"() <{value = 8 : i32}> : () -> i32
      %cst9_i32 = "arith.constant"() <{value = 9 : i32}> : () -> i32
      %cst10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %cst11_i32 = "arith.constant"() <{value = 11 : i32}> : () -> i32
      %cst12_i32 = "arith.constant"() <{value = 12 : i32}> : () -> i32
      %cst13_i32 = "arith.constant"() <{value = 13 : i32}> : () -> i32
      %cst14_i32 = "arith.constant"() <{value = 14 : i32}> : () -> i32
      %cst15_i32 = "arith.constant"() <{value = 15 : i32}> : () -> i32
      %0 = "arith.select"(%arg0, %arg1, %cst0_i32) : (tensor<32xi32>, tensor<32xi32>, i32) -> tensor<32xi32>
      %1 = "arith.addi"(%0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %2 = "arith.subi"(%1, %arg0) <{overflowFlags = #arith_overflow_none}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      %3 = "arith.xori"(%2, %arg1) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "tt.return"(%3) : (tensor<32xi32>) -> ()
  }) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()