"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x5x32x32xf32>) -> tensor<?x5x30x30xf32>, sym_name = "test_averagepool_dynamic_shape"}> ({
  ^bb0(%arg0: tensor<?x5x32x32xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3]} : (tensor<?x5x32x32xf32>) -> tensor<?x5x30x30xf32>
    "func.return"(%0) : (tensor<?x5x30x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

