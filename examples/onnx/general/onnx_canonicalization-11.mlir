"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x224x224xf32>, tensor<64xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>, sym_name = "test_conv_batchnormtestmode_fusion"}> ({
  ^bb0(%arg0: tensor<1x3x224x224xf32>, %arg1: tensor<64xf32>, %arg2: tensor<64x3x7x7xf32>, %arg3: tensor<64xf32>, %arg4: tensor<64xf32>, %arg5: tensor<64xf32>, %arg6: tensor<64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Conv"(%arg0, %arg2, %arg1) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [7, 7], pads = [3, 3, 3, 3], strides = [2, 2]} : (tensor<1x3x224x224xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
    %2 = "onnx.BatchNormalizationInferenceMode"(%1, %arg3, %arg4, %arg5, %arg6) {epsilon = 1.00000007E-5 : f32, momentum = 0.899999976 : f32} : (tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
    "onnx.Return"(%2) : (tensor<1x64x112x112xf32>) -> ()
  }) : () -> ()
}) : () -> ()

