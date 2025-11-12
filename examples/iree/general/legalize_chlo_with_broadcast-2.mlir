"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?x?xf32>) -> tensor<?x?xcomplex<f32>>, sym_name = "dynamicBroadcastComplex"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?x?xf32>):
    %0 = "chlo.broadcast_complex"(%arg0, %arg1) : (tensor<?xf32>, tensor<?x?xf32>) -> tensor<?x?xcomplex<f32>>
    "func.return"(%0) : (tensor<?x?xcomplex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

