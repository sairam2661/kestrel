"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x32x32xf32>) -> tensor<5x5x31x31xf32>, sym_name = "test_default_maxpoolsingleout_pad_nonunif"}> ({
  ^bb0(%arg0: tensor<5x5x32x32xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 0 : si64, kernel_shape = [5, 3], pads = [2, 1, 1, 0], storage_order = 0 : si64} : (tensor<5x5x32x32xf32>) -> tensor<5x5x31x31xf32>
    "func.return"(%0) : (tensor<5x5x31x31xf32>) -> ()
  }) : () -> ()
}) : () -> ()

