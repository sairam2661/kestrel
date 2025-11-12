"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<?x?xf32>, tensor<2xi32>) -> (tensor<1x1xf32>, tensor<2x1xf32>, tensor<1x2xi32>), sym_name = "dynamic_reshape"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<?x?xf32>, %arg2: tensor<2xi32>):
    %0 = "stablehlo.constant"() <{value = dense<[2, 1]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %1 = "stablehlo.dynamic_reshape"(%arg0, %arg2) : (tensor<1xf32>, tensor<2xi32>) -> tensor<1x1xf32>
    %2 = "stablehlo.dynamic_reshape"(%arg1, %0) : (tensor<?x?xf32>, tensor<2xi32>) -> tensor<2x1xf32>
    %3 = "stablehlo.dynamic_reshape"(%arg2, %arg2) : (tensor<2xi32>, tensor<2xi32>) -> tensor<1x2xi32>
    "func.return"(%1, %2, %3) : (tensor<1x1xf32>, tensor<2x1xf32>, tensor<1x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

