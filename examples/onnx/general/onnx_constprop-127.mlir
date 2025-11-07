"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<8xi16>, sym_name = "test_range_int"}> ({
    %0 = "onnx.Constant"() {value = dense<2> : tensor<i16>} : () -> tensor<i16>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<i16>} : () -> tensor<i16>
    %2 = "onnx.Constant"() {value = dense<1> : tensor<i16>} : () -> tensor<i16>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<i16>, tensor<i16>, tensor<i16>) -> tensor<8xi16>
    "onnx.Return"(%3) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()

