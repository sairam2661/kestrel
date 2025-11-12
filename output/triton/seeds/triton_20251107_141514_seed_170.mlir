"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> (tensor<8xi32>), sym_name = "tensor_reduce"}> ({
    ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
      %0 = "arith.constant"() <{value = dense<0> : tensor<8xi32>}> : () -> tensor<8xi32>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
      %2 = "tt.reduce"(%1) ({
        ^bb0(%arg2: tensor<8xi32>, %arg3: tensor<8xi32>):
          %3 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
          "scf.yield"(%3) : (tensor<8xi32>) -> ()
      }) : (tensor<8xi32>) -> tensor<8xi32>
      "tt.return"(%2) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()