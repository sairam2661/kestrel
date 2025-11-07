"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>) -> tensor<*xf32>, sym_name = "test_div_unknown_scalar1"}> ({
  ^bb0(%arg0: tensor<?x10xf32>):
    %0 = "onnx.Constant"() {value = dense<8.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Div"(%arg0, %0) : (tensor<?x10xf32>, tensor<f32>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

