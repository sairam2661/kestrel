"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x16xf32>) -> tensor<18x20xf32>, sym_name = "pad_constant_mode_constant_pads"}> ({
  ^bb0(%arg0: tensor<16x16xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[0, 3, 2, 1]> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %3 = "onnx.Pad"(%arg0, %1, %2, %0) {mode = "constant"} : (tensor<16x16xf32>, tensor<4xi64>, tensor<1xf32>, none) -> tensor<18x20xf32>
    "func.return"(%3) : (tensor<18x20xf32>) -> ()
  }) : () -> ()
}) : () -> ()

