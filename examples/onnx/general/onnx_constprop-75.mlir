"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "test_gemm_alpha0"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Gemm"(%0, %0, %0) {alpha = 0.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "onnx.Return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

