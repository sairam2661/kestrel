"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_add_and_multiply"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()