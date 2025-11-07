"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x32x32x32xf32>) -> (tensor<1x3x31x31x31xf32>, tensor<1x3x31x31x31xf32>), sym_name = "test_pool_not_lowered_pool3d"}> ({
  ^bb0(%arg0: tensor<1x3x32x32x32xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [2, 2, 2], storage_order = 0 : si64} : (tensor<1x3x32x32x32xf32>) -> tensor<1x3x31x31x31xf32>
    %1 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [2, 2, 2]} : (tensor<1x3x32x32x32xf32>) -> tensor<1x3x31x31x31xf32>
    "func.return"(%0, %1) : (tensor<1x3x31x31x31xf32>, tensor<1x3x31x31x31xf32>) -> ()
  }) : () -> ()
}) : () -> ()

