"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "fuzz_poly"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "arith.constant"() <{value = dense<2> : tensor<4xi32>}> : () -> tensor<4xi32>
      %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_NONE}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflow_NONE}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %3 = "arith.constant"() <{value = dense<3> : tensor<4xi32>}> : () -> tensor<4xi32>
      %4 = "arith.xori"(%2, %3) <{overflowFlags = #arith_overflow_NONE}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %5 = "arith.select"(%4, %arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "tt.return"(%5) : (tensor<4xi32>) -> ()
  }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
}) : () -> ()