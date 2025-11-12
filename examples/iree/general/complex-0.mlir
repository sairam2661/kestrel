"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "math_sin"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 1.000000e+00, -1.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %7 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, -1.000000e+00, 1.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %8 = "stablehlo.complex"(%6, %7) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xcomplex<f32>>
    %9 = "stablehlo.sine"(%8) : (tensor<4xcomplex<f32>>) -> tensor<4xcomplex<f32>>
    %10 = "stablehlo.real"(%9) : (tensor<4xcomplex<f32>>) -> tensor<4xf32>
    %11 = "stablehlo.imag"(%9) : (tensor<4xcomplex<f32>>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%10) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[0.000000e+00, 1.298460e+00, 1.298460e+00, -1.298460e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "check.expect_almost_eq_const"(%11) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[0.000000e+00, 6.349640e-01, -6.349640e-01, 6.349640e-01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "math_exp"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 1.000000e+00, -1.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, -1.000000e+00, 1.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "stablehlo.complex"(%0, %1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xcomplex<f32>>
    %3 = "stablehlo.exponential"(%2) : (tensor<4xcomplex<f32>>) -> tensor<4xcomplex<f32>>
    %4 = "stablehlo.real"(%3) : (tensor<4xcomplex<f32>>) -> tensor<4xf32>
    %5 = "stablehlo.imag"(%3) : (tensor<4xcomplex<f32>>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%4) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 1.468690e+00, 1.468690e+00, 1.987600e-01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[0.000000e+00, 2.287350e+00, -2.287350e+00, 3.095600e-01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

