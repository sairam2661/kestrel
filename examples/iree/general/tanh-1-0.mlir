"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tanh"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[-1.000000e+02, -5.000000e+00, -5.000000e-01, 1.000000e+00], [1.200000e+00, 2.000000e+00, 3.000000e+00, 1.000000e+02]]> : tensor<2x4xf32>}> : () -> tensor<2x4xf32>
    %1 = "stablehlo.tanh"(%0) : (tensor<2x4xf32>) -> tensor<2x4xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[-1.000000e+00, -0.999899983, -4.622000e-01, 7.616000e-01], [8.337000e-01, 0.963999986, 9.951000e-01, 1.000000e+00]]> : tensor<2x4xf32>}> : (tensor<2x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

