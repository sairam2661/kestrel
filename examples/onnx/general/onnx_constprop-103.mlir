"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x2xi64>, sym_name = "test_cast_f32_i64"}> ({
    %0 = "onnx.Constant"() {value = dense<[[2.300000e+00, 3.600000e+00], [4.500000e+00, 5.500000e+00], [6.000000e+00, 7.000000e+00]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Cast"(%0) {saturate = 1 : si64, to = i64} : (tensor<3x2xf32>) -> tensor<3x2xi64>
    "onnx.Return"(%1) : (tensor<3x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

