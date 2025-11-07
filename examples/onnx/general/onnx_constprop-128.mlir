"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xf32>, sym_name = "test_range_fp"}> ({
    %0 = "onnx.Constant"() {value = dense<2.000000e-01> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Constant"() {value = dense<5.000000e-01> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.Constant"() {value = dense<1.000000e-01> : tensor<f32>} : () -> tensor<f32>
    %3 = "onnx.Range"(%0, %1, %2) : (tensor<f32>, tensor<f32>, tensor<f32>) -> tensor<3xf32>
    "onnx.Return"(%3) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

