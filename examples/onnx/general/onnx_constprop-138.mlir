"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xf32>, sym_name = "test_sum_3_inputs"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]]> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.Constant"() {value = dense<[[1.000000e+00], [6.000000e+00]]> : tensor<2x1xf32>} : () -> tensor<2x1xf32>
    %3 = "onnx.Sum"(%0, %1, %2) : (tensor<2x2xf32>, tensor<f32>, tensor<2x1xf32>) -> tensor<2x2xf32>
    "onnx.Return"(%3) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

