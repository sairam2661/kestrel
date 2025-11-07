"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x16x13xf32>) -> tensor<5x5x4x4xf32>, sym_name = "test_default_averagepool_same_upper_ceil_mode"}> ({
  ^bb0(%arg0: tensor<5x5x16x13xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "SAME_UPPER", ceil_mode = 1 : si64, count_include_pad = 0 : si64, kernel_shape = [4, 4], strides = [4, 4]} : (tensor<5x5x16x13xf32>) -> tensor<5x5x4x4xf32>
    "func.return"(%0) : (tensor<5x5x4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

