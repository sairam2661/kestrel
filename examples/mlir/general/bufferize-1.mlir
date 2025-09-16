"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x4xf32>, sym_name = "basic"}> ({
    %0 = "arith.constant"() <{value = dense<7.000000e+00> : tensor<3x4xf32>}> : () -> tensor<3x4xf32>
    "func.return"(%0) : (tensor<3x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

