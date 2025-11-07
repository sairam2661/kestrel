"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x1xf32>, sym_name = "test_matmul_2d"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<2x3xf32>} : () -> tensor<2x3xf32>
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3x1xf32>} : () -> tensor<3x1xf32>
    %2 = "onnx.MatMul"(%0, %1) : (tensor<2x3xf32>, tensor<3x1xf32>) -> tensor<2x1xf32>
    "onnx.Return"(%2) : (tensor<2x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

