"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x72x8x14xf32>, tensor<72x24x4x4xf32>, tensor<72xf32>) -> tensor<1x72x16x28xf32>, sym_name = "test_grouped"}> ({
  ^bb0(%arg0: tensor<1x72x8x14xf32>, %arg1: tensor<72x24x4x4xf32>, %arg2: tensor<72xf32>):
    %0 = "onnx.ConvTranspose"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 3 : si64, kernel_shape = [4, 4], pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x72x8x14xf32>, tensor<72x24x4x4xf32>, tensor<72xf32>) -> tensor<1x72x16x28xf32>
    "func.return"(%0) : (tensor<1x72x16x28xf32>) -> ()
  }) : () -> ()
}) : () -> ()

