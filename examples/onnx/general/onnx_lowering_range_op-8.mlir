"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xi16>, sym_name = "test_range_static_i16"}> ({
    %0 = "onnx.Constant"() {value = dense<2> : tensor<1xi16>} : () -> tensor<1xi16>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<1xi16>} : () -> tensor<1xi16>
    %2 = "onnx.Constant"() {value = dense<1> : tensor<1xi16>} : () -> tensor<1xi16>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<1xi16>, tensor<1xi16>, tensor<1xi16>) -> tensor<*xi16>
    "func.return"(%3) : (tensor<*xi16>) -> ()
  }) : () -> ()
}) : () -> ()

