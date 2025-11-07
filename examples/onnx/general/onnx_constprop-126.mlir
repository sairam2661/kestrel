"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<f32>, sym_name = "test_constant_of_shape_empty_tensor"}> ({
    %0 = "onnx.Constant"() {value = dense<> : tensor<0xi64>} : () -> tensor<0xi64>
    %1 = "onnx.ConstantOfShape"(%0) {value = dense<2.000000e+00> : tensor<1xf32>} : (tensor<0xi64>) -> tensor<f32>
    "onnx.Return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

