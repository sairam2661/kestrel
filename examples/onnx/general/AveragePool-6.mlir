"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x16x13xf32>) -> tensor<5x5x14x11xf32>, sym_name = "test_default_averagepool_autopad_valid"}> ({
  ^bb0(%arg0: tensor<5x5x16x13xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "VALID", ceil_mode = 0 : si64, count_include_pad = 0 : si64, kernel_shape = [3, 3]} : (tensor<5x5x16x13xf32>) -> tensor<5x5x14x11xf32>
    "func.return"(%0) : (tensor<5x5x14x11xf32>) -> ()
  }) : () -> ()
}) : () -> ()

