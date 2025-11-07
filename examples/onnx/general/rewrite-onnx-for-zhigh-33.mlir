"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x223x223xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>, sym_name = "test_onnx_conv2d_not_insert_onnxpad_when_not_necessary"}> ({
  ^bb0(%arg0: tensor<1x3x223x223xf32>, %arg1: tensor<64x3x7x7xf32>, %arg2: tensor<64xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [7, 7], pads = [3, 3, 3, 3], strides = [2, 2]} : (tensor<1x3x223x223xf32>, tensor<64x3x7x7xf32>, tensor<64xf32>) -> tensor<1x64x112x112xf32>
    "func.return"(%0) : (tensor<1x64x112x112xf32>) -> ()
  }) : () -> ()
}) : () -> ()

