"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x5x5xf32>) -> tensor<*xf32>, sym_name = "averagepool_should_lower_to_zhigh_padtype_same"}> ({
  ^bb0(%arg0: tensor<1x1x5x5xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, dilations = [1, 1], kernel_shape = [3, 3], pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<1x1x5x5xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

