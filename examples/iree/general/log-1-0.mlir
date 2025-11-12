"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "stablehlo.log"(%4) : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[0.000000e+00, 6.931470e-01, 1.098610e+00, 1.386290e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<4.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %3 = "stablehlo.log"(%2) : (tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%3) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.386300e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "double"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<4.000000e+00> : tensor<f64>}> : () -> tensor<f64>
    %1 = "stablehlo.log"(%0) : (tensor<f64>) -> tensor<f64>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.386300e+00> : tensor<f64>}> : (tensor<f64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

