"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xi64>, sym_name = "test_range_static_i64"}> ({
    %0 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<*xi64>
    "func.return"(%3) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

