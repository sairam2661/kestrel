"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<[-1.000000e+00, -5.000000e-01, 0.000000e+00, 1.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %6 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %7 = "tosa.negate"(%4, %5, %6) : (tensor<4xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%7) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 5.000000e-01, 0.000000e+00, -1.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[-1, 0, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "tosa.negate"(%0, %1, %2) : (tensor<4xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%3) <{value = dense<[1, 0, -3, -1]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

