"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "add_f16"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1.500000e+00, 2.000000e+00, 3.000000e+00, 4.199220e+00]> : tensor<4xf16>}> : () -> tensor<4xf16>
    %1 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 6.199210e+00, 7.000000e+00, 8.101560e+00]> : tensor<4xf16>}> : () -> tensor<4xf16>
    %2 = "stablehlo.add"(%0, %1) : (tensor<4xf16>, tensor<4xf16>) -> tensor<4xf16>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[6.500000e+00, 8.203130e+00, 1.000000e+01, 1.229690e+01]> : tensor<4xf16>}> : (tensor<4xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

