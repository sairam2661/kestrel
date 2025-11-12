"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[-0.699999988, -5.000000e-01, -2.000000e-01, 0.000000e+00, 2.000000e-01, 5.000000e-01, 0.699999988]> : tensor<7xf32>}> : () -> tensor<7xf32>
    %1 = "stablehlo.round_nearest_afz"(%0) : (tensor<7xf32>) -> tensor<7xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[-1.000000e+00, -1.000000e+00, 0.000000e+00, 0.000000e+00, 0.000000e+00, 1.000000e+00, 1.000000e+00]> : tensor<7xf32>}> : (tensor<7xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

