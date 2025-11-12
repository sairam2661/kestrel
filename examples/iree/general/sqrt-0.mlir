"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %3 = "stablehlo.sqrt"(%2) : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%3) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 1.414200e+00, 1.732100e+00, 2.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<1.600000e+01> : tensor<f32>}> : () -> tensor<f32>
    %1 = "stablehlo.sqrt"(%0) : (tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<4.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

