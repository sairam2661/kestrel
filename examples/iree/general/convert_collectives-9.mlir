"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2304xf32>) -> tensor<2304xf32>, sym_name = "all_reduce_maximum_optional_attrs"}> ({
  ^bb0(%arg0: tensor<2304xf32>):
    %0 = "stablehlo.all_reduce"(%arg0) <{replica_groups = dense<[[0, 1, 2, 3, 4, 5, 6, 7]]> : tensor<1x8xi64>}> ({
    ^bb0(%arg1: tensor<f32>, %arg2: tensor<f32>):
      %1 = "stablehlo.maximum"(%arg1, %arg2) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "stablehlo.return"(%1) : (tensor<f32>) -> ()
    }) : (tensor<2304xf32>) -> tensor<2304xf32>
    "func.return"(%0) : (tensor<2304xf32>) -> ()
  }) : () -> ()
}) : () -> ()

