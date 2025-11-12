"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<2.000000e+00> : tensor<3x4xf32>}> : () -> tensor<3x4xf32>
    %2 = "chlo.broadcast_add"(%0, %1) : (tensor<4xf32>, tensor<3x4xf32>) -> tensor<3x4xf32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00, 6.000000e+00]]> : tensor<3x4xf32>}> : (tensor<3x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

