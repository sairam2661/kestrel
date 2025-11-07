"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x256x256xf32>, tensor<2x3x64x64xf32>, tensor<2xf32>) -> tensor<5x2x15x15xf32>, sym_name = "test_onnx_conv2d_stride_13"}> ({
  ^bb0(%arg0: tensor<5x3x256x256xf32>, %arg1: tensor<2x3x64x64xf32>, %arg2: tensor<2xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, pads = [1, 1, 1, 1], strides = [13, 13]} : (tensor<5x3x256x256xf32>, tensor<2x3x64x64xf32>, tensor<2xf32>) -> tensor<5x2x15x15xf32>
    "func.return"(%0) : (tensor<5x2x15x15xf32>) -> ()
  }) : () -> ()
}) : () -> ()

