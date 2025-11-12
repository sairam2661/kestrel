"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>) -> (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>), sym_name = "batchNormTraining_f64"}> ({
  ^bb0(%arg0: tensor<4x256xf64>, %arg1: tensor<256xf64>, %arg2: tensor<256xf64>):
    %0:3 = "stablehlo.batch_norm_training"(%arg0, %arg1, %arg2) <{epsilon = 1.000000e+00 : f32, feature_index = 1 : i64}> : (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>) -> (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>)
    "func.return"(%0#0, %0#1, %0#2) : (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>) -> ()
  }) : () -> ()
}) : () -> ()

