"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x13xf32>) -> tensor<*xf32>, sym_name = "test_Pad_1"}> ({
  ^bb0(%arg0: tensor<16x13xf32>):
    %0 = "onnx.Constant"() {value = dense<[0, 2, 2, 4]> : tensor<4xi64>} : () -> tensor<4xi64>
    %1 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.Pad"(%arg0, %0, %1, %2) {mode = "constant"} : (tensor<16x13xf32>, tensor<4xi64>, tensor<1xf32>, none) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

