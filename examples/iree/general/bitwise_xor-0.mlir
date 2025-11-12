"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[0, 17, 4353, 273]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[0, 16, 273, 0]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "tosa.bitwise_xor"(%0, %1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%2) <{value = dense<[0, 1, 4112, 273]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

