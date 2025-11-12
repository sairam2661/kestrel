"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xf32>, tensor<4xi32>) -> (tensor<3x4xf32>, tensor<4xi32>), sym_name = "optimization_barrier"}> ({
  ^bb0(%arg0: tensor<3x4xf32>, %arg1: tensor<4xi32>):
    %0:2 = "stablehlo.optimization_barrier"(%arg0, %arg1) : (tensor<3x4xf32>, tensor<4xi32>) -> (tensor<3x4xf32>, tensor<4xi32>)
    "func.return"(%0#0, %0#1) : (tensor<3x4xf32>, tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

