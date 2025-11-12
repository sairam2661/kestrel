"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "multiply"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<2.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "stablehlo.multiply"(%0, %0) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<4.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

