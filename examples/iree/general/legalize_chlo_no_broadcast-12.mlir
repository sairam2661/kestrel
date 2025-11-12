"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<4xf32>) -> tensor<4xcomplex<f32>>, sym_name = "complexWithoutBroadcast"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<4xf32>):
    %0 = "chlo.broadcast_complex"(%arg0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xcomplex<f32>>
    "func.return"(%0) : (tensor<4xcomplex<f32>>) -> ()
  }) : () -> ()
}) : () -> ()

