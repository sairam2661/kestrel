"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_add_multiply"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "arith.mulit"(%0, %arg0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()