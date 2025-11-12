"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>, tensor<2x1xi32>) -> tensor<3x1xi32>, sym_name = "dot_product"}> ({
  ^bb0(%arg0: tensor<3x2xi32>, %arg1: tensor<2x1xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.matmul"(%arg0, %arg1, %0) : (tensor<3x2xi32>, tensor<2x1xi32>, tensor<1xi8>) -> tensor<3x1xi32>
    "func.return"(%1) : (tensor<3x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()