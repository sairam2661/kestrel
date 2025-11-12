"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "bitcast"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<0> : tensor<4xi32>}> : () -> tensor<4xi32>
    %1 = "stablehlo.bitcast_convert"(%0) : (tensor<4xi32>) -> tensor<4xf32>
    "check.expect_eq_const"(%1) <{value = dense<0.000000e+00> : tensor<4xf32>}> : (tensor<4xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

