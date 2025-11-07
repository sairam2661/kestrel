"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x32x32xf32>) -> tensor<*xf32>, sym_name = "test_maxpool_pooling_operation", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<1x3x32x32xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2], storage_order = 0 : si64} : (tensor<1x3x32x32xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

