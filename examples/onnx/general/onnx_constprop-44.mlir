"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x2x1xf64>, sym_name = "test_matmul_2d_batch"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+02> : tensor<4x2x3xf64>} : () -> tensor<4x2x3xf64>
    %1 = "onnx.Constant"() {value = dense<1.000000e+02> : tensor<4x3x1xf64>} : () -> tensor<4x3x1xf64>
    %2 = "onnx.MatMul"(%0, %1) : (tensor<4x2x3xf64>, tensor<4x3x1xf64>) -> tensor<4x2x1xf64>
    "onnx.Return"(%2) : (tensor<4x2x1xf64>) -> ()
  }) : () -> ()
}) : () -> ()

