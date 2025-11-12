"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 5.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 1.000000e+00, 3.000000e+00, 1.500000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "tosa.sub"(%3, %4) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[-4.000000e+00, 4.000000e+00, 0.000000e+00, 2.500000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1, 5, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[5, 1, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.sub"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%2) <{value = dense<[-4, 4, 0, 3]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

