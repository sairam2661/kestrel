"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "xla_concatenate"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %4 = "util.unfoldable_constant"() <{value = dense<[[5, 6, 7], [8, 9, 10]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %5 = "util.unfoldable_constant"() <{value = dense<[[11, 12], [13, 14]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %6 = "stablehlo.concatenate"(%3, %4) <{dimension = 1 : i64}> : (tensor<2x2xi32>, tensor<2x3xi32>) -> tensor<2x5xi32>
    "check.expect_eq_const"(%6) <{value = dense<[[1, 2, 5, 6, 7], [3, 4, 8, 9, 10]]> : tensor<2x5xi32>}> : (tensor<2x5xi32>) -> ()
    %7 = "stablehlo.concatenate"(%4, %3) <{dimension = 1 : i64}> : (tensor<2x3xi32>, tensor<2x2xi32>) -> tensor<2x5xi32>
    "check.expect_eq_const"(%7) <{value = dense<[[5, 6, 7, 1, 2], [8, 9, 10, 3, 4]]> : tensor<2x5xi32>}> : (tensor<2x5xi32>) -> ()
    %8 = "stablehlo.concatenate"(%3, %4, %5) <{dimension = 1 : i64}> : (tensor<2x2xi32>, tensor<2x3xi32>, tensor<2x2xi32>) -> tensor<2x7xi32>
    "check.expect_eq_const"(%8) <{value = dense<[[1, 2, 5, 6, 7, 11, 12], [3, 4, 8, 9, 10, 13, 14]]> : tensor<2x7xi32>}> : (tensor<2x7xi32>) -> ()
    %9 = "stablehlo.concatenate"(%3, %5) <{dimension = 0 : i64}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<4x2xi32>
    "check.expect_eq_const"(%9) <{value = dense<[[1, 2], [3, 4], [11, 12], [13, 14]]> : tensor<4x2xi32>}> : (tensor<4x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "concatenate_cst"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %1 = "stablehlo.constant"() <{value = dense<0> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %2 = "stablehlo.concatenate"(%0, %1) <{dimension = 1 : i64}> : (tensor<2x2xi32>, tensor<2x3xi32>) -> tensor<2x5xi32>
    "check.expect_eq_const"(%2) <{value = dense<[[1, 2, 0, 0, 0], [3, 4, 0, 0, 0]]> : tensor<2x5xi32>}> : (tensor<2x5xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

