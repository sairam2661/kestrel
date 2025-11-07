"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x32x32xf32>) -> tensor<*xf32>, sym_name = "test_pool_not_lowered_not_same_padding"}> ({
  ^bb0(%arg0: tensor<1x3x32x32xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, dilations = [1, 1], kernel_shape = [2, 2], pads = [0, 0, 2, 2], storage_order = 0 : si64, strides = [1, 1]} : (tensor<1x3x32x32xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

