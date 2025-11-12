"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "reduce_max_float"}> ({
    %14 = "util.unfoldable_constant"() <{value = dense<[[2.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00], [1.000000e+00, 0.000000e+00]]> : tensor<3x2xf32>}> : () -> tensor<3x2xf32>
    %15 = "tosa.reduce_max"(%14) <{axis = 0 : i32, nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<3x2xf32>) -> tensor<1x2xf32>
    "check.expect_almost_eq_const"(%15) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[3.000000e+00, 4.000000e+00]]> : tensor<1x2xf32>}> : (tensor<1x2xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_max_int"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<[[2, 2], [3, 4], [1, 0]]> : tensor<3x2xi32>}> : () -> tensor<3x2xi32>
    %13 = "tosa.reduce_max"(%12) <{axis = 0 : i32, nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<3x2xi32>) -> tensor<1x2xi32>
    "check.expect_eq_const"(%13) <{value = dense<[[3, 4]]> : tensor<1x2xi32>}> : (tensor<1x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_min_float"}> ({
    %10 = "util.unfoldable_constant"() <{value = dense<[[2.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00], [1.000000e+00, 0.000000e+00]]> : tensor<3x2xf32>}> : () -> tensor<3x2xf32>
    %11 = "tosa.reduce_min"(%10) <{axis = 0 : i32, nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<3x2xf32>) -> tensor<1x2xf32>
    "check.expect_almost_eq_const"(%11) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[1.000000e+00, 0.000000e+00]]> : tensor<1x2xf32>}> : (tensor<1x2xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_min_int"}> ({
    %8 = "util.unfoldable_constant"() <{value = dense<[[2, 2], [3, 4], [1, 0]]> : tensor<3x2xi32>}> : () -> tensor<3x2xi32>
    %9 = "tosa.reduce_min"(%8) <{axis = 0 : i32, nan_mode = #tosa.nan_mode<PROPAGATE>}> : (tensor<3x2xi32>) -> tensor<1x2xi32>
    "check.expect_eq_const"(%9) <{value = dense<[[1, 0]]> : tensor<1x2xi32>}> : (tensor<1x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_prod_float"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]> : tensor<2x3xf32>}> : () -> tensor<2x3xf32>
    %7 = "tosa.reduce_product"(%6) <{axis = 0 : i32}> : (tensor<2x3xf32>) -> tensor<1x3xf32>
    "check.expect_almost_eq_const"(%7) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[4.000000e+00, 1.000000e+01, 1.800000e+01]]> : tensor<1x3xf32>}> : (tensor<1x3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_sum_float"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]> : tensor<2x3xf32>}> : () -> tensor<2x3xf32>
    %5 = "tosa.reduce_sum"(%4) <{axis = 0 : i32}> : (tensor<2x3xf32>) -> tensor<1x3xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[5.000000e+00, 7.000000e+00, 9.000000e+00]]> : tensor<1x3xf32>}> : (tensor<1x3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_sum_int"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %3 = "tosa.reduce_sum"(%2) <{axis = 0 : i32}> : (tensor<2x3xi32>) -> tensor<1x3xi32>
    "check.expect_eq_const"(%3) <{value = dense<[[5, 7, 9]]> : tensor<1x3xi32>}> : (tensor<1x3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "reduce_sum_float_axis_1"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]> : tensor<2x3xf32>}> : () -> tensor<2x3xf32>
    %1 = "tosa.reduce_sum"(%0) <{axis = 1 : i32}> : (tensor<2x3xf32>) -> tensor<2x1xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[6.000000e+00], [1.500000e+01]]> : tensor<2x1xf32>}> : (tensor<2x1xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

