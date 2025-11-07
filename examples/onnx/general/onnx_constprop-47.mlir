"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xi32>, sym_name = "test_matmul_lhs_vector"}> ({
    %0 = "onnx.Constant"() {value = dense<[100, 200]> : tensor<2xi32>} : () -> tensor<2xi32>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<2x3xi32>} : () -> tensor<2x3xi32>
    %2 = "onnx.MatMul"(%0, %1) : (tensor<2xi32>, tensor<2x3xi32>) -> tensor<3xi32>
    "onnx.Return"(%2) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

