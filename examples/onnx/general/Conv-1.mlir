"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x3x256x256xf32>, tensor<2x3x64x64xf32>) -> tensor<5x2x197x199xf32>, sym_name = "test_onnx_conv2d_novalue"}> ({
  ^bb0(%arg0: tensor<5x3x256x256xf32>, %arg1: tensor<2x3x64x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Conv"(%arg0, %arg1, %0) {auto_pad = "NOTSET", dilations = [1, 1], group = 1 : si64, pads = [1, 2, 3, 4]} : (tensor<5x3x256x256xf32>, tensor<2x3x64x64xf32>, none) -> tensor<5x2x197x199xf32>
    "func.return"(%1) : (tensor<5x2x197x199xf32>) -> ()
  }) : () -> ()
}) : () -> ()

