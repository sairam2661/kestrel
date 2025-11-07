"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xf32>, sym_name = "test_sum_1_input"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]]> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %1 = "onnx.Sum"(%0) : (tensor<2x2xf32>) -> tensor<2x2xf32>
    "onnx.Return"(%1) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

