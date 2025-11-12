"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[5, 3, 2, 7]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[0, 1, 2, 3]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.logical_left_shift"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%2) <{value = dense<[5, 6, 8, 56]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

