"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>, sym_name = "xorWithoutBroadcast"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<4xi1>):
    %0 = "chlo.broadcast_xor"(%arg0, %arg1) : (tensor<4xi1>, tensor<4xi1>) -> tensor<4xi1>
    "func.return"(%0) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()

