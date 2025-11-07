"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x28x?xf32>) -> tensor<*xf32>, sym_name = "test_random_normal_like_dynamic_f64"}> ({
  ^bb0(%arg0: tensor<1x1x28x?xf32>):
    %0 = "onnx.RandomNormalLike"(%arg0) {dtype = 2 : si64, mean = 0.000000e+00 : f32, scale = 1.000000e+00 : f32, seed = 2.000000e+00 : f32} : (tensor<1x1x28x?xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

