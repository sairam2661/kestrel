"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_expand_2_broadcast"}> ({
    %0 = "onnx.Constant"() {value = dense<[[[1.000000e+00], [3.000000e+00], [5.000000e+00]]]> : tensor<1x3x1xf32>} : () -> tensor<1x3x1xf32>
    %1 = "onnx.Constant"() {value = dense<[1, 2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Expand"(%0, %1) : (tensor<1x3x1xf32>, tensor<2xi64>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

