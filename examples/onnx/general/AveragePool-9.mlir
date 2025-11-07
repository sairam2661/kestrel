"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x32x32xf32>) -> tensor<5x5x30x34xf32>, sym_name = "test_averagepool_pad_nonunif_with_count_include_pad"}> ({
  ^bb0(%arg0: tensor<5x5x32x32xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 1 : si64, kernel_shape = [5, 3], pads = [0, 1, 2, 3]} : (tensor<5x5x32x32xf32>) -> tensor<5x5x30x34xf32>
    "func.return"(%0) : (tensor<5x5x30x34xf32>) -> ()
  }) : () -> ()
}) : () -> ()

