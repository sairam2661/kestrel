"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x3x3xf32>, tensor<1x1x2x2xf32>) -> tensor<1x1x5x5xf32>, sym_name = "test_dilations"}> ({
  ^bb0(%arg0: tensor<1x1x3x3xf32>, %arg1: tensor<1x1x2x2xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", dilations = [2, 2], group = 1 : si64} : (tensor<1x1x3x3xf32>, tensor<1x1x2x2xf32>, none) -> tensor<1x1x5x5xf32>
    "func.return"(%1) : (tensor<1x1x5x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

