"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_random_normal2"}> ({
    %0 = "onnx.RandomNormal"() {dtype = 2 : si64, mean = 0.000000e+00 : f32, scale = 1.000000e+00 : f32, seed = 2.000000e+00 : f32, shape = [3, 4, 5]} : () -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

