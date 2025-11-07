"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x10x10xf32>) -> tensor<1x3x10x10xf32>, sym_name = "test_batch_normalization"}> ({
  ^bb0(%arg0: tensor<1x3x10x10xf32>):
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3xf32>} : () -> tensor<3xf32>
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3xf32>} : () -> tensor<3xf32>
    %2 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3xf32>} : () -> tensor<3xf32>
    %3 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3xf32>} : () -> tensor<3xf32>
    %4 = "onnx.BatchNormalizationInferenceMode"(%arg0, %0, %1, %2, %3) {epsilon = 1.00000007E-5 : f32, momentum = 0.899999976 : f32} : (tensor<1x3x10x10xf32>, tensor<3xf32>, tensor<3xf32>, tensor<3xf32>, tensor<3xf32>) -> tensor<1x3x10x10xf32>
    "func.return"(%4) : (tensor<1x3x10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

