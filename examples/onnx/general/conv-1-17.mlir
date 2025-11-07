"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32769x3x32x32xf32>, tensor<32769x3x2x2xf32>, tensor<32769xf32>) -> tensor<*xf32>, sym_name = "test_exceed_limit_conv2d"}> ({
  ^bb0(%arg0: tensor<32769x3x32x32xf32>, %arg1: tensor<32769x3x2x2xf32>, %arg2: tensor<32769xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [2, 2]} : (tensor<32769x3x32x32xf32>, tensor<32769x3x2x2xf32>, tensor<32769xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

