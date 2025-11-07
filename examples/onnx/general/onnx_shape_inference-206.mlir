"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_range_float_constant"}> ({
    %0 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %1 = "onnx.Constant"() {value = dense<1.000000e+01> : tensor<1xf32>} : () -> tensor<1xf32>
    %2 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

