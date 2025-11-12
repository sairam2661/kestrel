"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "narrow_int_i32_i8"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %13 = "stablehlo.convert"(%12) : (tensor<3xi32>) -> tensor<3xi8>
    "check.expect_eq_const"(%13) <{value = dense<[-42, 0, 42]> : tensor<3xi8>}> : (tensor<3xi8>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "widen_int_i8_i32"}> ({
    %10 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi8>}> : () -> tensor<3xi8>
    %11 = "stablehlo.convert"(%10) : (tensor<3xi8>) -> tensor<3xi32>
    "check.expect_eq_const"(%11) <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : (tensor<3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "narrow_int_i32_i16"}> ({
    %8 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %9 = "stablehlo.convert"(%8) : (tensor<3xi32>) -> tensor<3xi16>
    "check.expect_eq_const"(%9) <{value = dense<[-42, 0, 42]> : tensor<3xi16>}> : (tensor<3xi16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "widen_int_i16_i32"}> ({
    %6 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi16>}> : () -> tensor<3xi16>
    %7 = "stablehlo.convert"(%6) : (tensor<3xi16>) -> tensor<3xi32>
    "check.expect_eq_const"(%7) <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : (tensor<3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "narrow_int_i64_i32"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi64>}> : () -> tensor<3xi64>
    %5 = "stablehlo.convert"(%4) : (tensor<3xi64>) -> tensor<3xi32>
    "check.expect_eq_const"(%5) <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : (tensor<3xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "widen_int_i32_i64"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %3 = "stablehlo.convert"(%2) : (tensor<3xi32>) -> tensor<3xi64>
    "check.expect_eq_const"(%3) <{value = dense<[-42, 0, 42]> : tensor<3xi64>}> : (tensor<3xi64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "int_to_float"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[-42, 0, 42]> : tensor<3xi32>}> : () -> tensor<3xi32>
    %1 = "stablehlo.convert"(%0) : (tensor<3xi32>) -> tensor<3xf32>
    "check.expect_almost_eq_const"(%1) <{atol = 9.99999974E-5 : f32, rtol = 0.000000e+00 : f32, value = dense<[-4.200000e+01, 0.000000e+00, 4.200000e+01]> : tensor<3xf32>}> : (tensor<3xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

