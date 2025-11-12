"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_i32"}> ({
    %30 = "util.unfoldable_constant"() <{value = dense<[1, 6, 7, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %31 = "util.unfoldable_constant"() <{value = dense<[5, 6, 3, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %32 = "stablehlo.maximum"(%30, %31) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%32) <{value = dense<[5, 6, 7, 8]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_odd_dim"}> ({
    %27 = "util.unfoldable_constant"() <{value = dense<[1, 6, 7]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %28 = "util.unfoldable_constant"() <{value = dense<[5, 6, 3]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %29 = "stablehlo.maximum"(%27, %28) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "check.expect_eq_const"(%29) <{value = dense<[5, 6, 7]> : tensor<3xi32>}> : (tensor<3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar_i32"}> ({
    %24 = "util.unfoldable_constant"() <{value = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %25 = "util.unfoldable_constant"() <{value = dense<2> : tensor<i32>}> : () -> tensor<i32>
    %26 = "stablehlo.maximum"(%24, %25) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%26) <{value = dense<2> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative_i32"}> ({
    %21 = "util.unfoldable_constant"() <{value = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %22 = "util.unfoldable_constant"() <{value = dense<-2> : tensor<i32>}> : () -> tensor<i32>
    %23 = "stablehlo.maximum"(%21, %22) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "check.expect_eq_const"(%23) <{value = dense<1> : tensor<i32>}> : (tensor<i32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i8"}> ({
    %18 = "util.unfoldable_constant"() <{value = dense<1> : tensor<i8>}> : () -> tensor<i8>
    %19 = "util.unfoldable_constant"() <{value = dense<2> : tensor<i8>}> : () -> tensor<i8>
    %20 = "stablehlo.maximum"(%18, %19) : (tensor<i8>, tensor<i8>) -> tensor<i8>
    "check.expect_eq_const"(%20) <{value = dense<2> : tensor<i8>}> : (tensor<i8>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i16"}> ({
    %15 = "util.unfoldable_constant"() <{value = dense<1> : tensor<i16>}> : () -> tensor<i16>
    %16 = "util.unfoldable_constant"() <{value = dense<2> : tensor<i16>}> : () -> tensor<i16>
    %17 = "stablehlo.maximum"(%15, %16) : (tensor<i16>, tensor<i16>) -> tensor<i16>
    "check.expect_eq_const"(%17) <{value = dense<2> : tensor<i16>}> : (tensor<i16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i64"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<1> : tensor<i64>}> : () -> tensor<i64>
    %13 = "util.unfoldable_constant"() <{value = dense<2> : tensor<i64>}> : () -> tensor<i64>
    %14 = "stablehlo.maximum"(%12, %13) : (tensor<i64>, tensor<i64>) -> tensor<i64>
    "check.expect_eq_const"(%14) <{value = dense<2> : tensor<i64>}> : (tensor<i64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_f32"}> ({
    %9 = "util.unfoldable_constant"() <{value = dense<[1.000000e+00, 2.000000e+00, 7.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %10 = "util.unfoldable_constant"() <{value = dense<[5.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %11 = "stablehlo.minimum"(%9, %10) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_almost_eq_const"(%11) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "scalar_f32"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %7 = "util.unfoldable_constant"() <{value = dense<2.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %8 = "stablehlo.minimum"(%6, %7) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%8) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "double"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<f64>}> : () -> tensor<f64>
    %4 = "util.unfoldable_constant"() <{value = dense<2.000000e+00> : tensor<f64>}> : () -> tensor<f64>
    %5 = "stablehlo.minimum"(%3, %4) : (tensor<f64>, tensor<f64>) -> tensor<f64>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.000000e+00> : tensor<f64>}> : (tensor<f64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "negative_f32"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "util.unfoldable_constant"() <{value = dense<-2.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %2 = "stablehlo.minimum"(%0, %1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<-2.000000e+00> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

