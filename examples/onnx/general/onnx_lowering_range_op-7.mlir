"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf64>, sym_name = "test_range_static_f64"}> ({
    %0 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1xf64>} : () -> tensor<1xf64>
    %1 = "onnx.Constant"() {value = dense<1.000000e+01> : tensor<1xf64>} : () -> tensor<1xf64>
    %2 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<1xf64>} : () -> tensor<1xf64>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<1xf64>, tensor<1xf64>, tensor<1xf64>) -> tensor<*xf64>
    "func.return"(%3) : (tensor<*xf64>) -> ()
  }) : () -> ()
}) : () -> ()

