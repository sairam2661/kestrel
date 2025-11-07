"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xf32>, sym_name = "test_pow"}> ({
    %0 = "onnx.Constant"() {value = dense<6.400000e+01> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %1 = "onnx.Constant"() {value = dense<5.000000e-01> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.Pow"(%0, %1) : (tensor<2x2xf32>, tensor<f32>) -> tensor<2x2xf32>
    "onnx.Return"(%2) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

