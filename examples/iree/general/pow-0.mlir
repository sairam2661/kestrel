"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %3 = "stablehlo.constant"() <{value = dense<3.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "stablehlo.power"(%4, %3) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 8.000000e+00, 2.700000e+01, 6.400000e+01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar"}> ({
    %0 = "stablehlo.constant"() <{value = dense<2.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "util.unfoldable_constant"() <{value = dense<1.600000e+01> : tensor<f32>}> : () -> tensor<f32>
    %2 = "stablehlo.power"(%1, %0) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<2.560000e+02> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

