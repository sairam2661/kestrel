"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "gather_float"}> ({
    %3 = "arith.constant"() <{value = dense<[[[1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00]]]> : tensor<1x2x2xf32>}> : () -> tensor<1x2x2xf32>
    %4 = "tosa.const"() <{values = dense<[[1, 0]]> : tensor<1x2xi32>}> : () -> tensor<1x2xi32>
    %5 = "tosa.gather"(%3, %4) : (tensor<1x2x2xf32>, tensor<1x2xi32>) -> tensor<1x2x2xf32>
    "check.expect_eq_const"(%5) <{value = dense<[[[3.000000e+00, 4.000000e+00], [1.000000e+00, 2.000000e+00]]]> : tensor<1x2x2xf32>}> : (tensor<1x2x2xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "gather_int"}> ({
    %0 = "arith.constant"() <{value = dense<[[[1, 2], [3, 4]]]> : tensor<1x2x2xi32>}> : () -> tensor<1x2x2xi32>
    %1 = "tosa.const"() <{values = dense<[[1, 0]]> : tensor<1x2xi32>}> : () -> tensor<1x2xi32>
    %2 = "tosa.gather"(%0, %1) : (tensor<1x2x2xi32>, tensor<1x2xi32>) -> tensor<1x2x2xi32>
    "check.expect_eq_const"(%2) <{value = dense<[[[3, 4], [1, 2]]]> : tensor<1x2x2xi32>}> : (tensor<1x2x2xi32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

