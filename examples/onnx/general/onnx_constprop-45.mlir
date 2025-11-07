"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x2x1xi32>, sym_name = "test_matmul_2d_batch_lhs"}> ({
    %0 = "onnx.Constant"() {value = dense<1> : tensor<4x2x3xi32>} : () -> tensor<4x2x3xi32>
    %1 = "onnx.Constant"() {value = dense<3> : tensor<3x1xi32>} : () -> tensor<3x1xi32>
    %2 = "onnx.MatMul"(%0, %1) : (tensor<4x2x3xi32>, tensor<3x1xi32>) -> tensor<4x2x1xi32>
    "onnx.Return"(%2) : (tensor<4x2x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

