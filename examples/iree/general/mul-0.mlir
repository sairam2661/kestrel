"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 0.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 6.000000e+00, -3.000000e+00, 8.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %6 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %7 = "tosa.mul"(%4, %5, %6) : (tensor<4xf32>, tensor<4xf32>, tensor<1xi8>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%7) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[5.000000e+00, 0.000000e+00, -9.000000e+00, 3.200000e+01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1, 0, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[5, 6, -3, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.mul"(%0, %1, %2) : (tensor<4xi32>, tensor<4xi32>, tensor<1xi8>) -> tensor<4xi32>
    "check.expect_eq_const"(%3) <{value = dense<[5, 0, -9, 32]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

