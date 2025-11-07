"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<f32>, sym_name = "test_scalar_attr"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %2 = "onnx.Add"(%0, %1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "func.return"(%2) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

