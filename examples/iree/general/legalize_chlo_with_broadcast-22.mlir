"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "shift_right_logicalWithoutBroadcast"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "chlo.broadcast_shift_right_logical"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

