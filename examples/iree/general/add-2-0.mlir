"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 6.000000e+00, 7.000000e+00, 8.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "stablehlo.add"(%3, %4) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[6.000000e+00, 8.000000e+00, 1.000000e+01, 1.200000e+01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_4d"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]], [[5.000000e+00, 6.000000e+00], [7.000000e+00, 8.000000e+00]]], [[[9.000000e+00, 1.000000e+01], [1.100000e+01, 1.200000e+01]], [[1.300000e+01, 1.400000e+01], [1.500000e+01, 1.600000e+01]]]]> : tensor<2x2x2x2xf32>}> : () -> tensor<2x2x2x2xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<[[[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]], [[5.000000e+00, 6.000000e+00], [7.000000e+00, 8.000000e+00]]], [[[9.000000e+00, 1.000000e+01], [1.100000e+01, 1.200000e+01]], [[1.300000e+01, 1.400000e+01], [1.500000e+01, 1.600000e+01]]]]> : tensor<2x2x2x2xf32>}> : () -> tensor<2x2x2x2xf32>
    %2 = "stablehlo.add"(%0, %1) : (tensor<2x2x2x2xf32>, tensor<2x2x2x2xf32>) -> tensor<2x2x2x2xf32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[[[2.000000e+00, 4.000000e+00], [6.000000e+00, 8.000000e+00]], [[1.000000e+01, 1.200000e+01], [1.400000e+01, 1.600000e+01]]], [[[1.800000e+01, 2.000000e+01], [2.200000e+01, 2.400000e+01]], [[2.600000e+01, 2.800000e+01], [3.000000e+01, 3.200000e+01]]]]> : tensor<2x2x2x2xf32>}> : (tensor<2x2x2x2xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

