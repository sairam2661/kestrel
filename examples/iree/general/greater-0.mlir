"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, -1.500000e+00, 7.000000e+00, -2.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 1.000000e+00, 7.000000e+00, -3.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %5 = "tosa.greater"(%3, %4) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xi1>
    "check.expect_eq_const"(%5) <{value = dense<[false, false, false, true]> : tensor<4xi1>}> : (tensor<4xi1>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1, 0, 5, 3]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[5, 0, 1, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.greater"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    "check.expect_eq_const"(%2) <{value = dense<[false, false, true, false]> : tensor<4xi1>}> : (tensor<4xi1>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

