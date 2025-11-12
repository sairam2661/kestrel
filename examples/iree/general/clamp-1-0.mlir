"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "i8"}> ({
    %12 = "util.unfoldable_constant"() <{value = dense<0> : tensor<4xi8>}> : () -> tensor<4xi8>
    %13 = "util.unfoldable_constant"() <{value = dense<[-2, 4, 8, 12]> : tensor<4xi8>}> : () -> tensor<4xi8>
    %14 = "util.unfoldable_constant"() <{value = dense<10> : tensor<4xi8>}> : () -> tensor<4xi8>
    %15 = "stablehlo.clamp"(%12, %13, %14) : (tensor<4xi8>, tensor<4xi8>, tensor<4xi8>) -> tensor<4xi8>
    "check.expect_eq_const"(%15) <{value = dense<[0, 4, 8, 10]> : tensor<4xi8>}> : (tensor<4xi8>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i16"}> ({
    %8 = "util.unfoldable_constant"() <{value = dense<0> : tensor<4xi16>}> : () -> tensor<4xi16>
    %9 = "util.unfoldable_constant"() <{value = dense<[-2, 4, 8, 12]> : tensor<4xi16>}> : () -> tensor<4xi16>
    %10 = "util.unfoldable_constant"() <{value = dense<10> : tensor<4xi16>}> : () -> tensor<4xi16>
    %11 = "stablehlo.clamp"(%8, %9, %10) : (tensor<4xi16>, tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    "check.expect_eq_const"(%11) <{value = dense<[0, 4, 8, 10]> : tensor<4xi16>}> : (tensor<4xi16>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "i32"}> ({
    %4 = "util.unfoldable_constant"() <{value = dense<0> : tensor<4xi32>}> : () -> tensor<4xi32>
    %5 = "util.unfoldable_constant"() <{value = dense<[-2, 4, 8, 12]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %6 = "util.unfoldable_constant"() <{value = dense<10> : tensor<4xi32>}> : () -> tensor<4xi32>
    %7 = "stablehlo.clamp"(%4, %5, %6) : (tensor<4xi32>, tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "check.expect_eq_const"(%7) <{value = dense<[0, 4, 8, 10]> : tensor<4xi32>}> : (tensor<4xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "f32"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<0.000000e+00> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "util.unfoldable_constant"() <{value = dense<[-2.000000e+00, 4.000000e+00, 8.000000e+00, 1.200000e+01]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %2 = "util.unfoldable_constant"() <{value = dense<1.000000e+01> : tensor<4xf32>}> : () -> tensor<4xf32>
    %3 = "stablehlo.clamp"(%0, %1, %2) : (tensor<4xf32>, tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "check.expect_eq_const"(%3) <{value = dense<[0.000000e+00, 4.000000e+00, 8.000000e+00, 1.000000e+01]> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

