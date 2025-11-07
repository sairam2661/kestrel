"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xui8>) -> tensor<4x2xi32>, sym_name = "test_matmulinteger_lhs_scalar"}> ({
  ^bb0(%arg0: tensor<3x2xui8>):
    %0 = "onnx.Constant"() {value = dense<7> : tensor<4x3xui8>} : () -> tensor<4x3xui8>
    %1 = "onnx.Constant"() {value = dense<7> : tensor<ui8>} : () -> tensor<ui8>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.MatMulInteger"(%0, %arg0, %1, %2) : (tensor<4x3xui8>, tensor<3x2xui8>, tensor<ui8>, none) -> tensor<4x2xi32>
    "onnx.Return"(%3) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

