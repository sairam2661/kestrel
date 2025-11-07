"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x5xf32>) -> tensor<1x3x7x7xf32>, sym_name = "test_pad_constant"}> ({
  ^bb0(%arg0: tensor<1x3x5x5xf32>):
    %0 = "onnx.Constant"() {value = dense<[0, 0, 1, 1, 0, 0, 1, 1]> : tensor<8xi64>} : () -> tensor<8xi64>
    %1 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.Pad"(%arg0, %0, %1, %2) {mode = "constant"} : (tensor<1x3x5x5xf32>, tensor<8xi64>, tensor<f32>, none) -> tensor<1x3x7x7xf32>
    "func.return"(%3) : (tensor<1x3x7x7xf32>) -> ()
  }) : () -> ()
}) : () -> ()

