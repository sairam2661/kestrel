"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>) -> (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>), sym_name = "batchNormTraining_f16"}> ({
  ^bb0(%arg0: tensor<4x256xf16>, %arg1: tensor<256xf16>, %arg2: tensor<256xf16>):
    %0:3 = "stablehlo.batch_norm_training"(%arg0, %arg1, %arg2) <{epsilon = 1.000000e+00 : f32, feature_index = 1 : i64}> : (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>) -> (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>)
    "func.return"(%0#0, %0#1, %0#2) : (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>) -> ()
  }) : () -> ()
}) : () -> ()

