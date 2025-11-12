"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4xf32>) -> tensor<4xf32>, sym_name = "elementwiseOps", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %1 = "arith.subf"(%0, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %2 = "arith.mulf"(%1, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "util.return"(%2) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

