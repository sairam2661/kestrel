"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x3x3xf32>, tensor<1x2x3x3xf32>) -> tensor<1x2x7x3xf32>, sym_name = "test_pads"}> ({
  ^bb0(%arg0: tensor<1x1x3x3xf32>, %arg1: tensor<1x2x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, pads = [1, 2, 1, 2], strides = [3, 2]} : (tensor<1x1x3x3xf32>, tensor<1x2x3x3xf32>, none) -> tensor<1x2x7x3xf32>
    "func.return"(%1) : (tensor<1x2x7x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

