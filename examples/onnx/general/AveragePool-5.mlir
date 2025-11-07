"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x30x32xf32>) -> tensor<5x5x16x16xf32>, sym_name = "test_default_averagepool_strides_nonunifpad_ceil"}> ({
  ^bb0(%arg0: tensor<5x5x30x32xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 1 : si64, count_include_pad = 0 : si64, kernel_shape = [2, 2], pads = [1, 0, 0, 0], strides = [2, 2]} : (tensor<5x5x30x32xf32>) -> tensor<5x5x16x16xf32>
    "func.return"(%0) : (tensor<5x5x16x16xf32>) -> ()
  }) : () -> ()
}) : () -> ()

