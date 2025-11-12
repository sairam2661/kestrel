"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "scalar"}> ({
    %21 = "util.unfoldable_constant"() <{value = dense<1.600000e+01> : tensor<f32>}> : () -> tensor<f32>
    %22 = "util.unfoldable_constant"() <{value = dense<7.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %23 = "stablehlo.remainder"(%21, %22) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%23) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<2.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor"}> ({
    %18 = "util.unfoldable_constant"() <{value = dense<[1.600000e+01, 1.700000e+01, 1.800000e+01]> : tensor<3xf32>}> : () -> tensor<3xf32>
    %19 = "util.unfoldable_constant"() <{value = dense<[7.000000e+00, 8.000000e+00, 9.000000e+00]> : tensor<3xf32>}> : () -> tensor<3xf32>
    %20 = "stablehlo.remainder"(%18, %19) : (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
    "check.expect_almost_eq_const"(%20) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[2.000000e+00, 1.000000e+00, 0.000000e+00]> : tensor<3xf32>}> : (tensor<3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative_den"}> ({
    %15 = "util.unfoldable_constant"() <{value = dense<1.600000e+01> : tensor<f32>}> : () -> tensor<f32>
    %16 = "util.unfoldable_constant"() <{value = dense<-7.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %17 = "stablehlo.remainder"(%15, %16) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%17) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<2.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative_num"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<-1.600000e+01> : tensor<f32>}> : () -> tensor<f32>
    %13 = "util.unfoldable_constant"() <{value = dense<7.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %14 = "stablehlo.remainder"(%12, %13) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%14) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<-2.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar_int"}> ({
    %9 = "util.unfoldable_constant"() <{value = dense<16> : tensor<i32>}> : () -> tensor<i32>
    %10 = "util.unfoldable_constant"() <{value = dense<7> : tensor<i32>}> : () -> tensor<i32>
    %11 = "stablehlo.remainder"(%9, %10) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%11) <{value = dense<2> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<[16, 17, 18]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %7 = "util.unfoldable_constant"() <{value = dense<[7, 8, 9]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %8 = "stablehlo.remainder"(%6, %7) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "check.expect_eq_const"(%8) <{value = dense<[2, 1, 0]> : tensor<3xi32>}> : (tensor<3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative_den_int"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<16> : tensor<i32>}> : () -> tensor<i32>
    %4 = "util.unfoldable_constant"() <{value = dense<-7> : tensor<i32>}> : () -> tensor<i32>
    %5 = "stablehlo.remainder"(%3, %4) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%5) <{value = dense<2> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative_num_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<-16> : tensor<i32>}> : () -> tensor<i32>
    %1 = "util.unfoldable_constant"() <{value = dense<7> : tensor<i32>}> : () -> tensor<i32>
    %2 = "stablehlo.remainder"(%0, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%2) <{value = dense<-2> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

