"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xf32>) -> tensor<4x2xf32>, sym_name = "test_cumstom_multiple_output"}> ({
  ^bb0(%arg0: tensor<4x2xf32>):
    %0 = "onnx.Constant"() {value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00], [6.000000e+00, 7.000000e+00, 8.000000e+00, 9.000000e+00, 1.000000e+01], [1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00], [1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00]]> : tensor<4x5xf32>} : () -> tensor<4x5xf32>
    %1:2 = "onnx.Custom"(%0) {function_name = "Decompose", r_value = 2 : si64} : (tensor<4x5xf32>) -> (tensor<4x2xf32>, tensor<2x5xf32>)
    %2 = "onnx.Add"(%arg0, %1#0) : (tensor<4x2xf32>, tensor<4x2xf32>) -> tensor<4x2xf32>
    "func.return"(%2) : (tensor<4x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

