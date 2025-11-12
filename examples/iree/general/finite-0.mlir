"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f32"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 6.000000e+00, -6.000000e+00, 0.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "stablehlo.divide"(%0, %1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %3 = "stablehlo.is_finite"(%2) : (tensor<4xf32>) -> tensor<4xi1>
    %4 = "util.unfoldable_constant"() <{value = dense<0> : tensor<4xi8>}> : () -> tensor<4xi8>
    %5 = "util.unfoldable_constant"() <{value = dense<1> : tensor<4xi8>}> : () -> tensor<4xi8>
    %6 = "stablehlo.select"(%3, %5, %4) : (tensor<4xi1>, tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "check.expect_eq_const"(%6) <{value = dense<[0, 1, 1, 1]> : tensor<4xi8>}> : (tensor<4xi8>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

