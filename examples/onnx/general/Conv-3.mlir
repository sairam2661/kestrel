"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x256x260xf32>, tensor<2x3x60x64xf32>) -> tensor<5x2x197x197xf32>, sym_name = "test_onnx_conv2d_no_dilation_pad_stride"}> ({
  ^bb0(%arg0: tensor<5x3x256x260xf32>, %arg1: tensor<2x3x60x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Conv"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64} : (tensor<5x3x256x260xf32>, tensor<2x3x60x64xf32>, none) -> tensor<5x2x197x197xf32>
    "func.return"(%1) : (tensor<5x2x197x197xf32>) -> ()
  }) : () -> ()
}) : () -> ()

