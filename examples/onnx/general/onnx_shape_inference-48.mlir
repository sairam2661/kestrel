"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x32x32xf32>) -> tensor<*xf32>, sym_name = "test_default_averagepool"}> ({
  ^bb0(%arg0: tensor<5x5x32x32xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "VALID", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3]} : (tensor<5x5x32x32xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

