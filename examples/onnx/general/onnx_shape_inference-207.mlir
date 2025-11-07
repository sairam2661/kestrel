"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xi32>, sym_name = "test_range_int_constant"}> ({
    %0 = "onnx.Constant"() {value = dense<2> : tensor<1xi32>} : () -> tensor<1xi32>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<1xi32>} : () -> tensor<1xi32>
    %2 = "onnx.Constant"() {value = dense<1> : tensor<1xi32>} : () -> tensor<1xi32>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<1xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<*xi32>
    "onnx.Return"(%3) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

