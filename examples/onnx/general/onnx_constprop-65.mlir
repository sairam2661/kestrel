"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x3xi32>, sym_name = "test_matmulinteger_lhs_vector_batch"}> ({
    %0 = "onnx.Constant"() {value = dense<[100, 200]> : tensor<2xui8>} : () -> tensor<2xui8>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<4x2x3xi8>} : () -> tensor<4x2x3xi8>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.MatMulInteger"(%0, %1, %2, %2) : (tensor<2xui8>, tensor<4x2x3xi8>, none, none) -> tensor<4x3xi32>
    "onnx.Return"(%3) : (tensor<4x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

