"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x2x1xi32>, sym_name = "test_matmulinteger_2d_batch_lhs"}> ({
    %0 = "onnx.Constant"() {value = dense<1> : tensor<4x2x3xi8>} : () -> tensor<4x2x3xi8>
    %1 = "onnx.Constant"() {value = dense<3> : tensor<3x1xi8>} : () -> tensor<3x1xi8>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.MatMulInteger"(%0, %1, %2, %2) : (tensor<4x2x3xi8>, tensor<3x1xi8>, none, none) -> tensor<4x2x1xi32>
    "onnx.Return"(%3) : (tensor<4x2x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

