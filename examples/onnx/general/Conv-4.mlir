"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x64x256x256xf32>, tensor<12x16x45x45xf32>, tensor<12xf32>) -> tensor<5x12x17x17xf32>, sym_name = "test_onnx_conv2d_group"}> ({
  ^bb0(%arg0: tensor<5x64x256x256xf32>, %arg1: tensor<12x16x45x45xf32>, %arg2: tensor<12xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 4 : si64, pads = [1, 1, 1, 1], strides = [13, 13]} : (tensor<5x64x256x256xf32>, tensor<12x16x45x45xf32>, tensor<12xf32>) -> tensor<5x12x17x17xf32>
    "func.return"(%0) : (tensor<5x12x17x17xf32>) -> ()
  }) : () -> ()
}) : () -> ()

