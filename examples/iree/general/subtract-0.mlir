"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "i32"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[5, 6, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = "util.unfoldable_constant"() <{value = dense<[1, 4, 7, 6]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %5 = "stablehlo.subtract"(%3, %4) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%5) <{value = dense<[4, 2, -4, -2]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f32"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 6.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 4.000000e+00, 7.000000e+00, 6.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "stablehlo.subtract"(%0, %1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[4.000000e+00, 2.000000e+00, -4.000000e+00, -2.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

