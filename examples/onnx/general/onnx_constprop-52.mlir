"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xui8>) -> tensor<4x2xi32>, sym_name = "test_matmulinteger_lhs_zero"}> ({
  ^bb0(%arg0: tensor<3x2xui8>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<4x3xi8>} : () -> tensor<4x3xi8>
    %1 = "onnx.NoValue"() {value} : () -> none
    %2 = "onnx.MatMulInteger"(%0, %arg0, %1, %1) : (tensor<4x3xi8>, tensor<3x2xui8>, none, none) -> tensor<4x2xi32>
    "onnx.Return"(%2) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

