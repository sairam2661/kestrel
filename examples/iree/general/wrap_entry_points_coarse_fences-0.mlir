"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4xf32>, tensor<4xf32>) -> (tensor<4xf32>, tensor<4xf32>), sym_name = "asyncEntry", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<4xf32>):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    %1 = "arith.addf"(%0, %arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "util.return"(%0, %1) : (tensor<4xf32>, tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

