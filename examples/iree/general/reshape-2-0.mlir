"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reshape_1D_2D"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]> : tensor<12xi32>}> : () -> tensor<12xi32>
    %1 = "stablehlo.reshape"(%0) : (tensor<12xi32>) -> tensor<3x4xi32>
    "check.expect_eq_const"(%1) <{value = dense<[[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]> : tensor<3x4xi32>}> : (tensor<3x4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

