"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3xf32>, sym_name = "test_float_dense"}> ({
    %0 = "onnx.Constant"() {value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00]> : tensor<3xf32>} : () -> tensor<3xf32>
    "func.return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

