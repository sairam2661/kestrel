"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4xf32>) -> (), sym_name = "tensorArgOnly", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %1 = "util.optimization_barrier"(%0) : (tensor<4xf32>) -> tensor<4xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

