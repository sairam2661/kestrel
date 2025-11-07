"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>) -> tensor<*xf32>, sym_name = "test_constant_dense_2d_value", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<1xf32>):
    %0 = "onnx.Constant"() {value = dense<[[0.000000e+00, 0.000000e+00], [1.000000e+00, 1.100000e+00], [2.000000e+00, 2.100000e+00]]> : tensor<3x2xf32>} : () -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

