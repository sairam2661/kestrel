"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 1.500000e+00, 2.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %3 = "stablehlo.sine"(%2) : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%3) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[0.000000e+00, 0.841499984, 9.975000e-01, 9.093000e-01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<3.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "stablehlo.sine"(%0) : (tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.411200e-01> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

