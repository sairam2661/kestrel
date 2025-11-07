"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<10xf32>, sym_name = "test_batchnorm_testmode_1d", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xf32>, %arg3: tensor<1xf32>, %arg4: tensor<1xf32>):
    %0 = "onnx.BatchNormalizationInferenceMode"(%arg0, %arg1, %arg2, %arg3, %arg4) {epsilon = 9.99999974E-6 : f32, momentum = 0.899999976 : f32} : (tensor<10xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<10xf32>
    "func.return"(%0) : (tensor<10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

