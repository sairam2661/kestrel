"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x16x13xf32>) -> tensor<*xf32>, sym_name = "test_default_maxpoolsingleout_lower"}> ({
  ^bb0(%arg0: tensor<5x5x16x13xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "SAME_LOWER", ceil_mode = 0 : si64, kernel_shape = [4, 4], storage_order = 0 : si64, strides = [4, 4]} : (tensor<5x5x16x13xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

