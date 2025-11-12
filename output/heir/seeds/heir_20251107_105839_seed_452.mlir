"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "tensor.extract"(%arg0, %0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %2 = "tensor.extract"(%arg1, %0) : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%3) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()