"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_fp16"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00, 4.000000e+00]> : tensor<4xf16>}> : () -> tensor<4xf16>
    %1 = "stablehlo.exponential"(%0) : (tensor<4xf16>) -> tensor<4xf16>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 2.718750e+00, 7.390630e+00, 5.459380e+01]> : tensor<4xf16>}> : (tensor<4xf16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

