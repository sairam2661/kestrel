"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi64>) -> tensor<*xf32>, sym_name = "test_constant_of_shape_dynamic_dims", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3xi64>):
    %0 = "onnx.ConstantOfShape"(%arg0) {value = dense<1.000000e+00> : tensor<1xf32>} : (tensor<3xi64>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

