"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "NextAfterWithoutBroadcast"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<4xf32>):
    %0 = "chlo.broadcast_next_after"(%arg0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

