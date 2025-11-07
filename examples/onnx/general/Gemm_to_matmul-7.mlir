"builtin.module"() ({
  "func.func"() <{function_type = (tensor<11x5xf32>, tensor<3x11xf32>, tensor<5x3xf32>) -> tensor<5x3xf32>, sym_name = "test_mixed"}> ({
  ^bb0(%arg0: tensor<11x5xf32>, %arg1: tensor<3x11xf32>, %arg2: tensor<5x3xf32>):
    %0 = "onnx.Gemm"(%arg0, %arg1, %arg2) {alpha = 1.402000e+00 : f32, beta = 1.998000e+00 : f32, transA = 1 : si64, transB = 1 : si64} : (tensor<11x5xf32>, tensor<3x11xf32>, tensor<5x3xf32>) -> tensor<5x3xf32>
    "func.return"(%0) : (tensor<5x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

