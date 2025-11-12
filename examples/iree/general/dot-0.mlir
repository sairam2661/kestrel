"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "f32"}> ({
    %18 = "util.unfoldable_constant"() <{value = dense<[[1.500000e+01, 1.400000e+01, 1.300000e+01], [1.200000e+01, 1.100000e+01, 1.000000e+01], [9.000000e+00, 8.000000e+00, 7.000000e+00], [6.000000e+00, 5.000000e+00, 4.000000e+00], [3.000000e+00, 2.000000e+00, 1.000000e+00]]> : tensor<5x3xf32>}> : () -> tensor<5x3xf32>
    %19 = "util.unfoldable_constant"() <{value = dense<[[1.500000e+01, 1.400000e+01, 1.300000e+01, 1.200000e+01, 1.100000e+01], [1.000000e+01, 9.000000e+00, 8.000000e+00, 7.000000e+00, 6.000000e+00], [5.000000e+00, 4.000000e+00, 3.000000e+00, 2.000000e+00, 1.000000e+00]]> : tensor<3x5xf32>}> : () -> tensor<3x5xf32>
    %20 = "stablehlo.dot"(%18, %19) : (tensor<5x3xf32>, tensor<3x5xf32>) -> tensor<5x5xf32>
    "check.expect_almost_eq_const"(%20) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[[4.300000e+02, 3.880000e+02, 3.460000e+02, 3.040000e+02, 2.620000e+02], [3.400000e+02, 3.070000e+02, 2.740000e+02, 2.410000e+02, 2.080000e+02], [2.500000e+02, 2.260000e+02, 2.020000e+02, 1.780000e+02, 1.540000e+02], [1.600000e+02, 1.450000e+02, 1.300000e+02, 1.150000e+02, 1.000000e+02], [7.000000e+01, 6.400000e+01, 5.800000e+01, 5.200000e+01, 4.600000e+01]]> : tensor<5x5xf32>}> : (tensor<5x5xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i32i32.i32"}> ({
    %15 = "util.unfoldable_constant"() <{value = dense<3> : tensor<2x4xi32>}> : () -> tensor<2x4xi32>
    %16 = "util.unfoldable_constant"() <{value = dense<2> : tensor<4x2xi32>}> : () -> tensor<4x2xi32>
    %17 = "stablehlo.dot"(%15, %16) : (tensor<2x4xi32>, tensor<4x2xi32>) -> tensor<2x2xi32>
    "check.expect_eq_const"(%17) <{value = dense<24> : tensor<2x2xi32>}> : (tensor<2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i8i8.i32"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<3> : tensor<2x4xi8>}> : () -> tensor<2x4xi8>
    %13 = "util.unfoldable_constant"() <{value = dense<2> : tensor<4x2xi8>}> : () -> tensor<4x2xi8>
    %14 = "stablehlo.dot"(%12, %13) : (tensor<2x4xi8>, tensor<4x2xi8>) -> tensor<2x2xi32>
    "check.expect_eq_const"(%14) <{value = dense<24> : tensor<2x2xi32>}> : (tensor<2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i16i16.i32"}> ({
    %9 = "util.unfoldable_constant"() <{value = dense<3> : tensor<2x4xi16>}> : () -> tensor<2x4xi16>
    %10 = "util.unfoldable_constant"() <{value = dense<2> : tensor<4x2xi16>}> : () -> tensor<4x2xi16>
    %11 = "stablehlo.dot"(%9, %10) : (tensor<2x4xi16>, tensor<4x2xi16>) -> tensor<2x2xi32>
    "check.expect_eq_const"(%11) <{value = dense<24> : tensor<2x2xi32>}> : (tensor<2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "large"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<15x16xf32>}> : () -> tensor<15x16xf32>
    %7 = "util.unfoldable_constant"() <{value = dense<4.000000e-01> : tensor<16x17xf32>}> : () -> tensor<16x17xf32>
    %8 = "stablehlo.dot"(%6, %7) : (tensor<15x16xf32>, tensor<16x17xf32>) -> tensor<15x17xf32>
    "check.expect_almost_eq_const"(%8) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<6.400000e+00> : tensor<15x17xf32>}> : (tensor<15x17xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "matvec"}> ({
    %3 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<15x32xf32>}> : () -> tensor<15x32xf32>
    %4 = "util.unfoldable_constant"() <{value = dense<5.000000e-01> : tensor<32xf32>}> : () -> tensor<32xf32>
    %5 = "stablehlo.dot"(%3, %4) : (tensor<15x32xf32>, tensor<32xf32>) -> tensor<15xf32>
    "check.expect_almost_eq_const"(%5) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<1.600000e+01> : tensor<15xf32>}> : (tensor<15xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "dot"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<1024xf32>}> : () -> tensor<1024xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<5.000000e-01> : tensor<1024xf32>}> : () -> tensor<1024xf32>
    %2 = "stablehlo.dot"(%0, %1) : (tensor<1024xf32>, tensor<1024xf32>) -> tensor<f32>
    "check.expect_almost_eq_const"(%2) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<5.120000e+02> : tensor<f32>}> : (tensor<f32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

