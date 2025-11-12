"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "log_plus_one"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 5.000000e-01, 1.000000e+00, 5.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "stablehlo.log_plus_one"(%0) : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[0.000000e+00, 0.405465096, 0.693147182, 1.79175949]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

