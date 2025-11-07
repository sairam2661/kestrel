"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x4x3xi8>) -> tensor<1x4x2xi32>, sym_name = "test_matmulinteger_rhs_zero_tensor"}> ({
  ^bb0(%arg0: tensor<1x4x3xi8>):
    %0 = "onnx.Constant"() {value = dense<[[[1, 2], [1, 2], [1, 2]]]> : tensor<1x3x2xui8>} : () -> tensor<1x3x2xui8>
    %1 = "onnx.NoValue"() {value} : () -> none
    %2 = "onnx.Constant"() {value = dense<[[[1, 2]]]> : tensor<1x1x2xui8>} : () -> tensor<1x1x2xui8>
    %3 = "onnx.MatMulInteger"(%arg0, %0, %1, %2) : (tensor<1x4x3xi8>, tensor<1x3x2xui8>, none, tensor<1x1x2xui8>) -> tensor<1x4x2xi32>
    "onnx.Return"(%3) : (tensor<1x4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

