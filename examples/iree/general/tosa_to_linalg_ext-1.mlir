"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x5xf32>, tensor<2x2xi32>, tensor<2x2x5xf32>) -> tensor<2x4x5xf32>, sym_name = "scatter_static_batched"}> ({
  ^bb0(%arg0: tensor<2x4x5xf32>, %arg1: tensor<2x2xi32>, %arg2: tensor<2x2x5xf32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<2x4x5xf32>, tensor<2x2xi32>, tensor<2x2x5xf32>) -> tensor<2x4x5xf32>
    "func.return"(%0) : (tensor<2x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

