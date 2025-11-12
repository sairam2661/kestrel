"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>, sym_name = "tensor_mix"}> ({
  ^bb0(%arg0: tensor<5x5xi32>, %arg1: tensor<5x5xi32>):
    %0 = "arith.constant"() <{value = dense<42> : tensor<5x5xi32>}> : () -> tensor<5x5xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    %3 = "arith.mulif"(%2, %2) <{overflowFlags = #arith_overflownone}> : (tensor<5x5xi32>, tensor<5x5xi32>) -> tensor<5x5xi32>
    "func.return"(%3) : (tensor<5x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()