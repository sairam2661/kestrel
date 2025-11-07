"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x2xf32>, sym_name = "test_where_true"}> ({
    %0 = "onnx.Constant"() {value = dense<true> : tensor<2xi1>} : () -> tensor<2xi1>
    %1 = "onnx.Constant"() {value = dense<[[2.000000e+00, 4.000000e+00], [6.000000e+00, 8.000000e+00], [1.000000e+01, 1.200000e+01]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %2 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1x1xf32>} : () -> tensor<1x1xf32>
    %3 = "onnx.Where"(%0, %1, %2) : (tensor<2xi1>, tensor<3x2xf32>, tensor<1x1xf32>) -> tensor<3x2xf32>
    "onnx.Return"(%3) : (tensor<3x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

