"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<i32>, sym_name = "test_matmulinteger_two_vectors"}> ({
    %0 = "onnx.Constant"() {value = dense<[200, 40, 2]> : tensor<3xui8>} : () -> tensor<3xui8>
    %1 = "onnx.Constant"() {value = dense<[7, 2, 3]> : tensor<3xi8>} : () -> tensor<3xi8>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.MatMulInteger"(%0, %1, %2, %2) : (tensor<3xui8>, tensor<3xi8>, none, none) -> tensor<i32>
    "onnx.Return"(%3) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

