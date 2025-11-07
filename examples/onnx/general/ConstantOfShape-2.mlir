"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_constant_of_shape_static_dims", sym_visibility = "private"}> ({
    %0 = "onnx.Constant"() {value = dense<[3, 4, 5]> : tensor<3xi64>} : () -> tensor<3xi64>
    %1 = "onnx.ConstantOfShape"(%0) {value = dense<1.000000e+00> : tensor<1xf32>} : (tensor<3xi64>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

