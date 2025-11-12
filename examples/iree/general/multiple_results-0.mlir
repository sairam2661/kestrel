"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>) -> (tensor<2xf32>, tensor<2xf32>), sym_name = "multiple_results"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xf32>):
    %0 = "math.absf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<2xf32>) -> tensor<2xf32>
    %1 = "math.absf"(%arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%0, %1) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

