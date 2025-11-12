"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_shift", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = dense<2> : tensor<8xi32>}> : () -> tensor<8xi32>
    %1 = "arith.shli"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %2 = "arith.shrsi"(%arg1, %0) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "arith.addi"(%1, %2) : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "tt.return"(%3) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()