"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<64xf32>, sym_name = "test_rewrite_batchnormtestmode_1d"}> ({
  ^bb0(%arg0: tensor<64xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xf32>, %arg3: tensor<1xf32>, %arg4: tensor<1xf32>):
    %0 = "onnx.BatchNormalizationInferenceMode"(%arg0, %arg1, %arg2, %arg3, %arg4) {epsilon = 1.00000007E-5 : f32, momentum = 0.899999976 : f32} : (tensor<64xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<64xf32>
    "onnx.Return"(%0) : (tensor<64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

