"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "torch_select_index_0"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<[[[1, 2, 3, 4, 5]], [[6, 7, 8, 9, 10]], [[11, 12, 13, 14, 15]], [[16, 17, 18, 19, 20]], [[21, 22, 23, 24, 25]]]> : tensor<5x1x5xi32>}> : () -> tensor<5x1x5xi32>
    %7 = "util.unfoldable_constant"() <{value = dense<[0, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %8 = "stablehlo.torch_index_select"(%6, %7) <{batch_dims = 0 : i64, dim = 0 : i64}> : (tensor<5x1x5xi32>, tensor<2xi32>) -> tensor<2x1x5xi32>
    "check.expect_eq_const"(%8) <{value = dense<[[[1, 2, 3, 4, 5]], [[11, 12, 13, 14, 15]]]> : tensor<2x1x5xi32>}> : (tensor<2x1x5xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "torch_select_index_1"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<[[[1, 2], [3, 4]], [[5, 6], [7, 8]], [[9, 10], [11, 12]]]> : tensor<3x2x2xi32>}> : () -> tensor<3x2x2xi32>
    %4 = "util.unfoldable_constant"() <{value = dense<[0, 1]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %5 = "stablehlo.torch_index_select"(%3, %4) <{batch_dims = 0 : i64, dim = 1 : i64}> : (tensor<3x2x2xi32>, tensor<2xi32>) -> tensor<3x2x2xi32>
    "check.expect_eq_const"(%5) <{value = dense<[[[1, 2], [3, 4]], [[5, 6], [7, 8]], [[9, 10], [11, 12]]]> : tensor<3x2x2xi32>}> : (tensor<3x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "torch_select_index_2"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[[1, 2, 3, 4, 5]], [[6, 7, 8, 9, 10]], [[11, 12, 13, 14, 15]], [[16, 17, 18, 19, 20]], [[21, 22, 23, 24, 25]]]> : tensor<5x1x5xi32>}> : () -> tensor<5x1x5xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %2 = "stablehlo.torch_index_select"(%0, %1) <{batch_dims = 0 : i64, dim = 0 : i64}> : (tensor<5x1x5xi32>, tensor<i32>) -> tensor<1x5xi32>
    "check.expect_eq_const"(%2) <{value = dense<[[1, 2, 3, 4, 5]]> : tensor<1x5xi32>}> : (tensor<1x5xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

