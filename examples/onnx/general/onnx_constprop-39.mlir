"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x2xf32>, sym_name = "test_where_splat_branches"}> ({
    %0 = "onnx.Constant"() {value = dense<[true, false]> : tensor<2xi1>} : () -> tensor<2xi1>
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %2 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1x1xf32>} : () -> tensor<1x1xf32>
    %3 = "onnx.Where"(%0, %1, %2) : (tensor<2xi1>, tensor<3x2xf32>, tensor<1x1xf32>) -> tensor<3x2xf32>
    "onnx.Return"(%3) : (tensor<3x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

