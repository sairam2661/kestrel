"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_unsqueeze"}> ({
    %0 = "onnx.Constant"() {value = dense<[4.000000e+00, 1.600000e+01]> : tensor<2xf32>} : () -> tensor<2xf32>
    %1 = "onnx.Constant"() {value = dense<[1, 2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Unsqueeze"(%0, %1) : (tensor<2xf32>, tensor<2xi64>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

