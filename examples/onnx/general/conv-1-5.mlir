"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1280x1x1xf32>, tensor<448x1280x1x1xf32>, tensor<448xf32>) -> tensor<*xf32>, sym_name = "test_onnx_conv2d_valid_padding_H_equal_KW"}> ({
  ^bb0(%arg0: tensor<?x1280x1x1xf32>, %arg1: tensor<448x1280x1x1xf32>, %arg2: tensor<448xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, kernel_shape = [1, 1], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<?x1280x1x1xf32>, tensor<448x1280x1x1xf32>, tensor<448xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

