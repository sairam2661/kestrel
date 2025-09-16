"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf32>) -> (tensor<2x3xf32>, tensor<2x3xf32>), sym_name = "mul_zero_broadcast"}> ({
  ^bb0(%arg0: tensor<2x3xf32>):
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1x1xf32>}> : () -> tensor<1x1xf32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.mul"(%arg0, %0, %1) : (tensor<2x3xf32>, tensor<1x1xf32>, tensor<1xi8>) -> tensor<2x3xf32>
    %3 = "tosa.mul"(%0, %arg0, %1) : (tensor<1x1xf32>, tensor<2x3xf32>, tensor<1xi8>) -> tensor<2x3xf32>
    "func.return"(%2, %3) : (tensor<2x3xf32>, tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

