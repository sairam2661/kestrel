"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "test_gemm"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Constant"() {value = dense<[[10, 20], [30, 40]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %2 = "onnx.Constant"() {value = dense<[[1000, 2000], [3000, 4000]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %3 = "onnx.Gemm"(%0, %1, %2) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<2x2xi32>, tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "onnx.Return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

