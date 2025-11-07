"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x28x28xf32>) -> (tensor<1x3x30x30xf32>, tensor<1x3x30x30xf32>), sym_name = "test_pool_2d_not_lowered_non_same_valid_pads"}> ({
  ^bb0(%arg0: tensor<1x3x28x28xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [3, 3], pads = [2, 2, 2, 2], storage_order = 0 : si64, strides = [1, 1]} : (tensor<1x3x28x28xf32>) -> tensor<1x3x30x30xf32>
    %1 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3], pads = [2, 2, 2, 2], strides = [1, 1]} : (tensor<1x3x28x28xf32>) -> tensor<1x3x30x30xf32>
    "func.return"(%0, %1) : (tensor<1x3x30x30xf32>, tensor<1x3x30x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

