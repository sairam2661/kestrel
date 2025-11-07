"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>, sym_name = "test_averagepool_2d_padtype_not_computed_dyn"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf32>):
    %0 = "onnx.AveragePool"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, count_include_pad = 0 : si64, dilations = [1, 1], kernel_shape = [3, 3], pads = [1, 1, 1, 1], strides = [2, 2]} : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    "func.return"(%0) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

