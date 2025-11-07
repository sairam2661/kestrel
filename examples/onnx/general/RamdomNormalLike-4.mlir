"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>) -> tensor<*xf32>, sym_name = "test_random_normal_like5"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>):
    %0 = "onnx.RandomNormalLike"(%arg0) {mean = 0.000000e+00 : f32, scale = 1.000000e+00 : f32, seed = 2.000000e+00 : f32} : (tensor<3x4x5xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

