"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_concat"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00], [5.000000e+00, 6.000000e+00]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Constant"() {value = dense<[[1.100000e+01, 1.200000e+01], [1.300000e+01, 1.400000e+01], [1.500000e+01, 1.600000e+01]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<3x2xf32>, tensor<3x2xf32>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

