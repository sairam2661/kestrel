"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xf32>, sym_name = "test_gemm_no_bias"}> ({
    %0 = "onnx.Constant"() {value = dense<[[0.000000e+00, 2.500000e-01], [5.000000e-01, 7.500000e-01]]> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %1 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]]> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.Gemm"(%0, %1, %2) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<2x2xf32>, tensor<2x2xf32>, none) -> tensor<2x2xf32>
    "onnx.Return"(%3) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

