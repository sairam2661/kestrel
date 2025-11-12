"builtin.module"() ({
  "util.func"() <{function_type = (tensor<2x2xf32>) -> (), sym_name = "expect_almost_eq_const", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<2x2xf32>):
    "check.expect_almost_eq_const"(%arg0) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.000000e+00> : tensor<2x2xf32>}> : (tensor<2x2xf32>) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

