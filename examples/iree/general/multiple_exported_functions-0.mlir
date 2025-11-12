"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4xf32>, sym_name = "foo1"}> ({
    %2 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %3 = "math.exp"(%2) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%3) : (tensor<4xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> tensor<4xf32>, sym_name = "foo2"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00, 4.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "math.absf"(%0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%1) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

