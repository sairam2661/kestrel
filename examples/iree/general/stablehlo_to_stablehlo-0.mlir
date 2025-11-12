"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) -> tensor<4x256xf32>, sym_name = "batch_norm_inference"}> ({
  ^bb0(%arg0: tensor<4x256xf32>, %arg1: tensor<256xf32>, %arg2: tensor<256xf32>, %arg3: tensor<256xf32>, %arg4: tensor<256xf32>):
    %0 = "stablehlo.batch_norm_inference"(%arg0, %arg1, %arg2, %arg3, %arg4) <{epsilon = 1.001000e-05 : f32, feature_index = 1 : i64}> : (tensor<4x256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) -> tensor<4x256xf32>
    "func.return"(%0) : (tensor<4x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

