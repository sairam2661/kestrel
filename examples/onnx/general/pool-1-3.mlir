"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x32x32xf32>) -> tensor<*xf32>, sym_name = "averagepool_should_lower_to_zhigh_padtype_valid"}> ({
  ^bb0(%arg0: tensor<1x3x32x32xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, dilations = [1, 1], kernel_shape = [2, 2], pads = [0, 0, 0, 0], strides = [1, 1]} : (tensor<1x3x32x32xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

