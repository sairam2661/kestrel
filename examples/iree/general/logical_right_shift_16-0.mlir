"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "logical_right_shift_16"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[5, 8, 9, 256]> : tensor<4xi16>}> : () -> tensor<4xi16>
    %1 = "util.unfoldable_constant"() <{value = dense<[0, 1, 2, 8]> : tensor<4xi16>}> : () -> tensor<4xi16>
    %2 = "tosa.logical_right_shift"(%0, %1) : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    "check.expect_eq_const"(%2) <{value = dense<[5, 4, 2, 1]> : tensor<4xi16>}> : (tensor<4xi16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

