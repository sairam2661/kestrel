"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "matrix_add"}> ({
    ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflowFlagsAttr}>: (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflowFlagsAttr}>: (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
      "tt.return"(%2) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()