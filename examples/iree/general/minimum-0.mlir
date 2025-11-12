"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, -1.500000e+00, 7.000000e+00, -2.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 1.000000e+00, 7.000000e+00, -3.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "tosa.minimum"(%3, %4) <{nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_eq_const"(%5) <{value = dense<[1.000000e+00, -1.500000e+00, 7.000000e+00, -3.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1, 0, 5, 3]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[5, 0, 1, -8]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.minimum"(%0, %1) <{nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%2) <{value = dense<[1, 0, 1, -8]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

