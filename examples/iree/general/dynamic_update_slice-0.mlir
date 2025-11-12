"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_update_slice_2x2"}> ({
    %9 = "util.unfoldable_constant"() <{value = dense<2> : tensor<3x3xi32>}> : () -> tensor<3x3xi32>
    %10 = "util.unfoldable_constant"() <{value = dense<1> : tensor<2x2xi32>}> : () -> tensor<2x2xi32>
    %11 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %12 = "stablehlo.dynamic_update_slice"(%9, %10, %11, %11) : (tensor<3x3xi32>, tensor<2x2xi32>, tensor<i32>, tensor<i32>) -> tensor<3x3xi32>
    "check.expect_eq_const"(%12) <{value = dense<[[1, 1, 2], [1, 1, 2], [2, 2, 2]]> : tensor<3x3xi32>}> : (tensor<3x3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "dynamic_update_slice_1x3"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<2> : tensor<3x3xi32>}> : () -> tensor<3x3xi32>
    %5 = "util.unfoldable_constant"() <{value = dense<1> : tensor<1x3xi32>}> : () -> tensor<1x3xi32>
    %6 = "util.unfoldable_constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %7 = "util.unfoldable_constant"() <{value = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %8 = "stablehlo.dynamic_update_slice"(%4, %5, %7, %6) : (tensor<3x3xi32>, tensor<1x3xi32>, tensor<i32>, tensor<i32>) -> tensor<3x3xi32>
    "check.expect_eq_const"(%8) <{value = dense<[[2, 2, 2], [1, 1, 1], [2, 2, 2]]> : tensor<3x3xi32>}> : (tensor<3x3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "into_constant"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "stablehlo.constant"() <{value = dense<1> : tensor<4xi32>}> : () -> tensor<4xi32>
    %2 = "stablehlo.constant"() <{value = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %3 = "stablehlo.dynamic_update_slice"(%1, %0, %2) : (tensor<4xi32>, tensor<1xi32>, tensor<i32>) -> tensor<4xi32>
    "check.expect_eq_const"(%3) <{value = dense<[2, 1, 1, 1]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

