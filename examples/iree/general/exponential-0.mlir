"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %7 = "stablehlo.exponential"(%6) : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%7) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 2.718300e+00, 7.389100e+00, 5.459810e+01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %5 = "stablehlo.exponential"(%4) : (tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<2.718300e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "double"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<f64>}> : () -> tensor<f64>
    %3 = "stablehlo.exponential"(%2) : (tensor<f64>) -> tensor<f64>
    "check.expect_almost_eq_const"(%3) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<2.718300e+00> : tensor<f64>}> : (tensor<f64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<-1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "stablehlo.exponential"(%0) : (tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<3.678790e-01> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

