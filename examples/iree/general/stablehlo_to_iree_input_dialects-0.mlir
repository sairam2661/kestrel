"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x4xi32>) -> tensor<2x9xi32>, sym_name = "concatenate"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x4xi32>):
    %0 = "stablehlo.constant"() <{value = dense<514> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "stablehlo.concatenate"(%arg0, %0, %arg1) <{dimension = 1 : i64}> : (tensor<2x2xi32>, tensor<2x3xi32>, tensor<2x4xi32>) -> tensor<2x9xi32>
    "func.return"(%1) : (tensor<2x9xi32>) -> ()
  }) : () -> ()
}) : () -> ()

