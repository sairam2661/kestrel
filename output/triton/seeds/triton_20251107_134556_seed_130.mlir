"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<8xi32>, sym_name = "concat_and_add"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "tt.concat"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<8xi32>
      %1 = "arith.constant"() <{value = dense<1> : tensor<8xi32>}> : () -> tensor<8xi32>
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      "tt.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()