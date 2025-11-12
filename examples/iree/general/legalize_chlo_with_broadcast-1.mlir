"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "dynamicBroadcast"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "chlo.broadcast_add"(%arg0, %arg1) : (tensor<?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

