"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>) -> (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>), sym_name = "batchNormTraining_2D_inner_features"}> ({
  ^bb0(%arg0: tensor<4x256xf32>, %arg1: tensor<256xf32>, %arg2: tensor<256xf32>):
    %0:3 = "stablehlo.batch_norm_training"(%arg0, %arg1, %arg2) <{epsilon = 1.001000e-05 : f32, feature_index = 1 : i64}> : (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>) -> (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>)
    "func.return"(%0#0, %0#1, %0#2) : (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

