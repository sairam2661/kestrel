"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x?x?xf32>, tensor<2x3x2x2xf32>, tensor<2xf32>) -> tensor<*xf32>, sym_name = "test_onnx_conv2d_not_lower_unknown_height_weight_dims"}> ({
  ^bb0(%arg0: tensor<5x3x?x?xf32>, %arg1: tensor<2x3x2x2xf32>, %arg2: tensor<2xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [2, 2]} : (tensor<5x3x?x?xf32>, tensor<2x3x2x2xf32>, tensor<2xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

