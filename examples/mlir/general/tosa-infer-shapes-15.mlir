"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3xf32>, tensor<1x3x4xf32>, tensor<1xf32>) -> tensor<1x2x4xf32>, sym_name = "test_unranked_zero_points_matmul"}> ({
  ^bb0(%arg0: tensor<1x2x3xf32>, %arg1: tensor<1x3x4xf32>, %arg2: tensor<1xf32>):
    %0 = "tosa.cast"(%arg2) : (tensor<1xf32>) -> tensor<*xf32>
    %1 = "tosa.matmul"(%arg0, %arg1, %0, %0) : (tensor<1x2x3xf32>, tensor<1x3x4xf32>, tensor<*xf32>, tensor<*xf32>) -> tensor<1x2x4xf32>
    "func.return"(%1) : (tensor<1x2x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

