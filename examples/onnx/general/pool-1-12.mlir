"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x4x4xf32>) -> tensor<1x1x2x2xf32>, sym_name = "test_maxpool_not_lowered_non_default_dilations"}> ({
  ^bb0(%arg0: tensor<1x1x4x4xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, dilations = [2, 2], kernel_shape = [2, 2], pads = [0, 0, 0, 0], storage_order = 0 : si64, strides = [1, 1]} : (tensor<1x1x4x4xf32>) -> tensor<1x1x2x2xf32>
    "func.return"(%0) : (tensor<1x1x2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

