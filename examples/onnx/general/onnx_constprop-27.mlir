"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x2xf32>, sym_name = "test_div"}> ({
    %0 = "onnx.Constant"() {value = dense<[[2.000000e+00, 4.000000e+00], [6.000000e+00, 8.000000e+00], [1.000000e+01, 1.200000e+01]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1x1xf32>} : () -> tensor<1x1xf32>
    %2 = "onnx.Div"(%0, %1) : (tensor<3x2xf32>, tensor<1x1xf32>) -> tensor<3x2xf32>
    "onnx.Return"(%2) : (tensor<3x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

