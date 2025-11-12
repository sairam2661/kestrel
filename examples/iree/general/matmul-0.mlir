"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "tensor_float"}> ({
    %5 = "util.unfoldable_constant"() <{value = dense<[[[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]], [[1.000000e+00, 2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00, 6.000000e+00]]]> : tensor<2x2x3xf32>}> : () -> tensor<2x2x3xf32>
    %6 = "util.unfoldable_constant"() <{value = dense<[[[7.000000e+00], [8.000000e+00], [9.000000e+00]], [[7.000000e+00], [8.000000e+00], [9.000000e+00]]]> : tensor<2x3x1xf32>}> : () -> tensor<2x3x1xf32>
    %7 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %8 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %9 = "tosa.matmul"(%5, %6, %7, %8) : (tensor<2x2x3xf32>, tensor<2x3x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<2x2x1xf32>
    "check.expect_eq_const"(%9) <{value = dense<[[[5.000000e+01], [1.220000e+02]], [[5.000000e+01], [1.220000e+02]]]> : tensor<2x2x1xf32>}> : (tensor<2x2x1xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "tensor_int"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[[[1, 2, 3], [4, 5, 6]], [[1, 2, 3], [4, 5, 6]]]> : tensor<2x2x3xi32>}> : () -> tensor<2x2x3xi32>
    %1 = "util.unfoldable_constant"() <{value = dense<[[[7], [8], [9]], [[7], [8], [9]]]> : tensor<2x3x1xi32>}> : () -> tensor<2x3x1xi32>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %4 = "tosa.matmul"(%0, %1, %2, %3) : (tensor<2x2x3xi32>, tensor<2x3x1xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<2x2x1xi32>
    "check.expect_eq_const"(%4) <{value = dense<[[[50], [122]], [[50], [122]]]> : tensor<2x2x1xi32>}> : (tensor<2x2x1xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

