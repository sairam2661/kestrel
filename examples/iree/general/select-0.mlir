"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<[false, false, true, true]> : tensor<4xi1>}> : () -> tensor<4xi1>
    %5 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 5.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %6 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 1.000000e+00, 3.000000e+00, 1.500000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %7 = "tosa.select"(%4, %5, %6) : (tensor<4xi1>, tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%7) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[5.000000e+00, 1.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[false, false, true, true]> : tensor<4xi1>}> : () -> tensor<4xi1>
    %1 = "util.unfoldable_constant"() <{value = dense<[1, 5, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "util.unfoldable_constant"() <{value = dense<[5, 1, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %3 = "tosa.select"(%0, %1, %2) : (tensor<4xi1>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%3) <{value = dense<[5, 1, 3, 4]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

