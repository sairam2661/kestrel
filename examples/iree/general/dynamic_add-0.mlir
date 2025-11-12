"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "main"}> ({
    %0 = "flow.tensor.dynamic_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00], [-1.000000e+00, -2.000000e+00, -3.000000e+00, -4.000000e+00]]> : tensor<2x4xf32>}> : () -> tensor<?x4xf32>
    %1 = "flow.tensor.dynamic_constant"() <{value = dense<[[5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00], [-5.000000e+00, -6.000000e+00, -7.000000e+00, -8.000000e+00]]> : tensor<2x4xf32>}> : () -> tensor<?x4xf32>
    %2 = "stablehlo.add"(%0, %1) : (tensor<?x4xf32>, tensor<?x4xf32>) -> tensor<?x4xf32>
    %3 = "util.optimization_barrier"(%2) : (tensor<?x4xf32>) -> tensor<?x4xf32>
    %4 = "tensor.cast"(%3) : (tensor<?x4xf32>) -> tensor<2x4xf32>
    "check.expect_almost_eq_const"(%4) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[6.000000e+00, 8.000000e+00, 1.000000e+01, 1.200000e+01], [-6.000000e+00, -8.000000e+00, -1.000000e+01, -1.200000e+01]]> : tensor<2x4xf32>}> : (tensor<2x4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

