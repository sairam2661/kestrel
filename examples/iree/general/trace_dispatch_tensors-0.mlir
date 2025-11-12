"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<15xf32>, sym_name = "two_dispatch"}> ({
    %0 = "util.unfoldable_constant"() <{value = dense<1.000000e+00> : tensor<15xf32>}> : () -> tensor<15xf32>
    %1 = "arith.addf"(%0, %0) <{fastmath = #arith.fastmath<none>}> : (tensor<15xf32>, tensor<15xf32>) -> tensor<15xf32>
    %2 = "util.optimization_barrier"(%1) : (tensor<15xf32>) -> tensor<15xf32>
    %3 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<15xf32>}> : () -> tensor<15xf32>
    %4 = "arith.addf"(%2, %3) <{fastmath = #arith.fastmath<none>}> : (tensor<15xf32>, tensor<15xf32>) -> tensor<15xf32>
    "func.return"(%4) : (tensor<15xf32>) -> ()
  }) : () -> ()
}) : () -> ()

