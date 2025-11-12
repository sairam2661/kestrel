"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[-1.000000e+00, -5.000000e-01, 0.000000e+00, 1.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "tosa.abs"(%0) : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 5.000000e-01, 0.000000e+00, 1.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

