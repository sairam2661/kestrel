"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x4x4xf32>) -> (tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>), sym_name = "test_pool_not_lowered_ceil"}> ({
  ^bb0(%arg0: tensor<1x1x4x4xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 1 : si64, dilations = [1, 1], kernel_shape = [3, 3], pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<1x1x4x4xf32>) -> tensor<1x1x2x2xf32>
    %1 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 1 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], pads = [0, 0, 0, 0], strides = [2, 2]} : (tensor<1x1x4x4xf32>) -> tensor<1x1x2x2xf32>
    "func.return"(%0, %1) : (tensor<1x1x2x2xf32>, tensor<1x1x2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

