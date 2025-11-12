"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>, tensor<256xf64>, tensor<256xf64>) -> tensor<4x256xf64>, sym_name = "batchNormInference_f64"}> ({
  ^bb0(%arg0: tensor<4x256xf64>, %arg1: tensor<256xf64>, %arg2: tensor<256xf64>, %arg3: tensor<256xf64>, %arg4: tensor<256xf64>):
    %0 = "stablehlo.batch_norm_inference"(%arg0, %arg1, %arg2, %arg3, %arg4) <{epsilon = 1.000000e+00 : f32, feature_index = 1 : i64}> : (tensor<4x256xf64>, tensor<256xf64>, tensor<256xf64>, tensor<256xf64>, tensor<256xf64>) -> tensor<4x256xf64>
    "func.return"(%0) : (tensor<4x256xf64>) -> ()
  }) : () -> ()
}) : () -> ()

