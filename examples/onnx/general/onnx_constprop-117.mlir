"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_expand"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00], [5.000000e+00, 6.000000e+00]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Constant"() {value = dense<[2, 3, 2]> : tensor<3xi64>} : () -> tensor<3xi64>
    %2 = "onnx.Expand"(%0, %1) : (tensor<3x2xf32>, tensor<3xi64>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

