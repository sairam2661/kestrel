"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi64>, sym_name = "tensor_add_mul"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.muli"(%1, %0) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi64>
    "func.return"(%2) : (tensor<2x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()