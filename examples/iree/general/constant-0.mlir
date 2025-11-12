"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "high_rank"}> ({
    %0 = "stablehlo.constant"() <{value = dense<[[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]]> : tensor<2x2x3xi32>}> : () -> tensor<2x2x3xi32>
    "check.expect_eq_const"(%0) <{value = dense<[[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]]> : tensor<2x2x3xi32>}> : (tensor<2x2x3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

