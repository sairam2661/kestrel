"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 0.000000e+00, 4.500000e+00, 2.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "tosa.clamp"(%0) <{max_val = 4.000000e+00 : f32, min_val = 1.000000e+00 : f32, nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 1.000000e+00, 4.000000e+00, 2.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

