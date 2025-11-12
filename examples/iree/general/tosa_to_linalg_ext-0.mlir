"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x4x5xf32>, tensor<1x2xi32>, tensor<1x2x5xf32>) -> tensor<1x4x5xf32>, sym_name = "scatter_static"}> ({
  ^bb0(%arg0: tensor<1x4x5xf32>, %arg1: tensor<1x2xi32>, %arg2: tensor<1x2x5xf32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<1x4x5xf32>, tensor<1x2xi32>, tensor<1x2x5xf32>) -> tensor<1x4x5xf32>
    "func.return"(%0) : (tensor<1x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

