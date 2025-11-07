"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x1x3xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) -> tensor<1x2x1x3xf32>, sym_name = "test_batchnorm_testmode_Nd", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<1x2x1x3xf32>, %arg1: tensor<2xf32>, %arg2: tensor<2xf32>, %arg3: tensor<2xf32>, %arg4: tensor<2xf32>):
    %0 = "onnx.BatchNormalizationInferenceMode"(%arg0, %arg1, %arg2, %arg3, %arg4) {epsilon = 9.99999974E-6 : f32, momentum = 0.899999976 : f32} : (tensor<1x2x1x3xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) -> tensor<1x2x1x3xf32>
    "func.return"(%0) : (tensor<1x2x1x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

