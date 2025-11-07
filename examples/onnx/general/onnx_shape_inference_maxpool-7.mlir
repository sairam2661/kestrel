"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x30x32xf32>) -> tensor<*xf32>, sym_name = "test_default_maxpoolsingleout_strides_nonunifpad_ceil"}> ({
  ^bb0(%arg0: tensor<5x5x30x32xf32>):
    %0 = "onnx.MaxPoolSingleOut"(%arg0) {auto_pad = "NOTSET", ceil_mode = 1 : si64, kernel_shape = [2, 2], pads = [1, 0, 0, 0], storage_order = 0 : si64, strides = [2, 2]} : (tensor<5x5x30x32xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

