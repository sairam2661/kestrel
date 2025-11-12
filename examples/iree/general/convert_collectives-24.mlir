"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xf32>) -> tensor<2x2xf32>, sym_name = "reduce_scatter_dim_0_optional_attrs"}> ({
  ^bb0(%arg0: tensor<4x2xf32>):
    %0 = "stablehlo.reduce_scatter"(%arg0) <{replica_groups = dense<[[0, 1]]> : tensor<1x2xi64>, scatter_dimension = 0 : i64}> ({
    ^bb0(%arg1: tensor<f32>, %arg2: tensor<f32>):
      %1 = "stablehlo.add"(%arg1, %arg2) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "stablehlo.return"(%1) : (tensor<f32>) -> ()
    }) : (tensor<4x2xf32>) -> tensor<2x2xf32>
    "func.return"(%0) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

