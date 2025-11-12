"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "no_round"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[5, 8, -1, 7]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %4 = "util.unfoldable_constant"() <{value = dense<[0, 1, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %5 = "tosa.arithmetic_right_shift"(%3, %4) <{round = false}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%5) <{value = dense<[5, 4, -1, 3]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "with_round"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[5, 8, -1, 7]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[0, 1, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.arithmetic_right_shift"(%0, %1) <{round = true}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%2) <{value = dense<[5, 4, 0, 4]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

