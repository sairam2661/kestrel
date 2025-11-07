"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x1024x1024xf32>, tensor<3x1x2x2xf32>, tensor<3xf32>) -> tensor<*xf32>, sym_name = "test_onnx_conv2d_not_lower_group"}> ({
  ^bb0(%arg0: tensor<5x3x1024x1024xf32>, %arg1: tensor<3x1x2x2xf32>, %arg2: tensor<3xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 3 : si64, kernel_shape = [2, 2]} : (tensor<5x3x1024x1024xf32>, tensor<3x1x2x2xf32>, tensor<3xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

