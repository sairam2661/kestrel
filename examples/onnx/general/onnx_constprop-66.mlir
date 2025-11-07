"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2xi32>, sym_name = "test_matmulinteger_rhs_vector"}> ({
    %0 = "onnx.Constant"() {value = dense<100> : tensor<2x3xui8>} : () -> tensor<2x3xui8>
    %1 = "onnx.Constant"() {value = dense<[10, 20, 30]> : tensor<3xi8>} : () -> tensor<3xi8>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.MatMulInteger"(%0, %1, %2, %2) : (tensor<2x3xui8>, tensor<3xi8>, none, none) -> tensor<2xi32>
    "onnx.Return"(%3) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

