"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x8x8xf32>) -> tensor<5x5x2x2xf32>, sym_name = "test_default_maxpoolsingleout_strides_dilatation"}> ({
  ^bb0(%arg0: tensor<5x5x8x8xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, dilations = [2, 2], kernel_shape = [2, 2], storage_order = 0 : si64, strides = [3, 3]} : (tensor<5x5x8x8xf32>) -> tensor<5x5x2x2xf32>
    "func.return"(%0) : (tensor<5x5x2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

