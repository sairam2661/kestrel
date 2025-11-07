"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x6xf32>, tensor<6x6xf32>, tensor<3x6xf32>) -> tensor<3x6xf32>, sym_name = "test_beta"}> ({
  ^bb0(%arg0: tensor<3x6xf32>, %arg1: tensor<6x6xf32>, %arg2: tensor<3x6xf32>):
    %0 = "onnx.Gemm"(%arg0, %arg1, %arg2) {alpha = 1.000000e+00 : f32, beta = 1.349000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<3x6xf32>, tensor<6x6xf32>, tensor<3x6xf32>) -> tensor<3x6xf32>
    "func.return"(%0) : (tensor<3x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()

