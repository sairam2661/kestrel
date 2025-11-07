"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_gather_axis_0"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 1.200000e+00], [2.300000e+00, 3.400000e+00], [4.500000e+00, 5.700000e+00]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Constant"() {value = dense<[[0, 1], [1, 2]]> : tensor<2x2xi64>} : () -> tensor<2x2xi64>
    %2 = "onnx.Gather"(%0, %1) {axis = 0 : si64} : (tensor<3x2xf32>, tensor<2x2xi64>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

