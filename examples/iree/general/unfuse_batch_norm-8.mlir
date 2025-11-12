"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>, tensor<256xf16>, tensor<256xf16>) -> tensor<4x256xf16>, sym_name = "batchNormInference_f16_overflow"}> ({
  ^bb0(%arg0: tensor<4x256xf16>, %arg1: tensor<256xf16>, %arg2: tensor<256xf16>, %arg3: tensor<256xf16>, %arg4: tensor<256xf16>):
    %0 = "stablehlo.batch_norm_inference"(%arg0, %arg1, %arg2, %arg3, %arg4) <{epsilon = 9.99999993E-9 : f32, feature_index = 1 : i64}> : (tensor<4x256xf16>, tensor<256xf16>, tensor<256xf16>, tensor<256xf16>, tensor<256xf16>) -> tensor<4x256xf16>
    "func.return"(%0) : (tensor<4x256xf16>) -> ()
  }) : () -> ()
}) : () -> ()

