"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x2xi32>, sym_name = "test_matmulinteger_with_1Dzeros"}> ({
    %0 = "onnx.Constant"() {value = dense<[[11, 7, 3], [10, 6, 2], [9, 5, 1], [8, 4, 0]]> : tensor<4x3xui8>} : () -> tensor<4x3xui8>
    %1 = "onnx.Constant"() {value = dense<[[1, 4], [2, 5], [3, 6]]> : tensor<3x2xui8>} : () -> tensor<3x2xui8>
    %2 = "onnx.Constant"() {value = dense<12> : tensor<1xui8>} : () -> tensor<1xui8>
    %3 = "onnx.Constant"() {value = dense<0> : tensor<1xui8>} : () -> tensor<1xui8>
    %4 = "onnx.MatMulInteger"(%0, %1, %2, %3) : (tensor<4x3xui8>, tensor<3x2xui8>, tensor<1xui8>, tensor<1xui8>) -> tensor<4x2xi32>
    "onnx.Return"(%4) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

