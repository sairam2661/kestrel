"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_reshape"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 1.200000e+00, 1.900000e+00], [2.300000e+00, 3.400000e+00, 3.900000e+00], [4.500000e+00, 5.700000e+00, 5.900000e+00]]> : tensor<3x3xf32>} : () -> tensor<3x3xf32>
    %1 = "onnx.Constant"() {value = dense<[1, -1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Reshape"(%0, %1) {allowzero = 0 : si64} : (tensor<3x3xf32>, tensor<2xi64>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

