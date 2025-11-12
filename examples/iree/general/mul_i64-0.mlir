"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "mul_i64"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<4294967296> : tensor<3x4xi64>}> : () -> tensor<3x4xi64>
    %1 = "util.unfoldable_constant"() <{value = dense<3> : tensor<3x4xi64>}> : () -> tensor<3x4xi64>
    %2 = "stablehlo.multiply"(%0, %1) : (tensor<3x4xi64>, tensor<3x4xi64>) -> tensor<3x4xi64>
    "check.expect_eq_const"(%2) <{value = dense<12884901888> : tensor<3x4xi64>}> : (tensor<3x4xi64>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

