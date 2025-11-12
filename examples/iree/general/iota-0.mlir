"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "iota_dim0"}> ({
    %1 = "stablehlo.iota"() <{iota_dimension = 0 : i64}> : () -> tensor<2x3xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[0.000000e+00, 0.000000e+00, 0.000000e+00], [1.000000e+00, 1.000000e+00, 1.000000e+00]]> : tensor<2x3xf32>}> : (tensor<2x3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "iota_dim1"}> ({
    %0 = "stablehlo.iota"() <{iota_dimension = 1 : i64}> : () -> tensor<2x3xf32>
    "check.expect_almost_eq_const"(%0) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[0.000000e+00, 1.000000e+00, 2.000000e+00], [0.000000e+00, 1.000000e+00, 2.000000e+00]]> : tensor<2x3xf32>}> : (tensor<2x3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

