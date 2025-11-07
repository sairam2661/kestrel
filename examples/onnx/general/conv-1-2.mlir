"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x32x32xf32>, tensor<?x3x2x2xf32>) -> tensor<*xf32>, sym_name = "test_onnx_conv2d_no_bias_unknown_bias_dims"}> ({
  ^bb0(%arg0: tensor<5x3x32x32xf32>, %arg1: tensor<?x3x2x2xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Conv"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [2, 2]} : (tensor<5x3x32x32xf32>, tensor<?x3x2x2xf32>, none) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

