"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4x5x6xf32>, tensor<3xf32>, tensor<3xf32>, tensor<3xf32>, tensor<3xf32>) -> tensor<2x3x4x5x6xf32>, sym_name = "test_batchnorm_5d_not_lowered"}> ({
  ^bb0(%arg0: tensor<2x3x4x5x6xf32>, %arg1: tensor<3xf32>, %arg2: tensor<3xf32>, %arg3: tensor<3xf32>, %arg4: tensor<3xf32>):
    %0 = "onnx.BatchNormalizationInferenceMode"(%arg0, %arg1, %arg2, %arg3, %arg4) {epsilon = 0.00999999977 : f32, momentum = 0.899999976 : f32} : (tensor<2x3x4x5x6xf32>, tensor<3xf32>, tensor<3xf32>, tensor<3xf32>, tensor<3xf32>) -> tensor<2x3x4x5x6xf32>
    "func.return"(%0) : (tensor<2x3x4x5x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()

