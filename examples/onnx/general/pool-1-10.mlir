"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x65x65xf32>) -> (tensor<1x3x1x1xf32>, tensor<1x3x1x1xf32>), sym_name = "test_pool_2d_not_lowered_kernel_greater_than_64"}> ({
  ^bb0(%arg0: tensor<1x3x65x65xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, dilations = [1, 1], kernel_shape = [65, 65], pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [1, 1]} : (tensor<1x3x65x65xf32>) -> tensor<1x3x1x1xf32>
    %1 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, dilations = [1, 1], kernel_shape = [65, 65], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<1x3x65x65xf32>) -> tensor<1x3x1x1xf32>
    "func.return"(%0, %1) : (tensor<1x3x1x1xf32>, tensor<1x3x1x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

