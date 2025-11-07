"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<ui32>, sym_name = "test_matmul_two_vectors"}> ({
    %0 = "onnx.Constant"() {value = dense<[200, 40, 2]> : tensor<3xui32>} : () -> tensor<3xui32>
    %1 = "onnx.Constant"() {value = dense<[7, 2, 3]> : tensor<3xui32>} : () -> tensor<3xui32>
    %2 = "onnx.MatMul"(%0, %1) : (tensor<3xui32>, tensor<3xui32>) -> tensor<ui32>
    "onnx.Return"(%2) : (tensor<ui32>) -> ()
  }) : () -> ()
}) : () -> ()

