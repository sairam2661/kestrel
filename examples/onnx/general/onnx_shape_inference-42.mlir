"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x64x36x48xf32>, tensor<64x1x2x2xf32>) -> tensor<*xf32>, sym_name = "test_conv_transpose_output_shape"}> ({
  ^bb0(%arg0: tensor<1x64x36x48xf32>, %arg1: tensor<64x1x2x2xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 64 : si64, kernel_shape = [2, 2], output_shape = [72, 94], pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x64x36x48xf32>, tensor<64x1x2x2xf32>, none) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

