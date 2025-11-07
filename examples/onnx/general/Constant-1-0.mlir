"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xf32>, sym_name = "test_float_broadcast"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<3xf32>} : () -> tensor<3xf32>
    "func.return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

