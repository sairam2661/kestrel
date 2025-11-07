"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xui8>) -> tensor<2x4xi32>, sym_name = "test_matmulinteger_lhs_vector"}> ({
  ^bb0(%arg0: tensor<3x4xui8>):
    %0 = "onnx.Constant"() {value = dense<[[7, 7, 7], [9, 9, 9]]> : tensor<2x3xui8>} : () -> tensor<2x3xui8>
    %1 = "onnx.Constant"() {value = dense<[7, 9]> : tensor<2xui8>} : () -> tensor<2xui8>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.MatMulInteger"(%0, %arg0, %1, %2) : (tensor<2x3xui8>, tensor<3x4xui8>, tensor<2xui8>, none) -> tensor<2x4xi32>
    "onnx.Return"(%3) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

