"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x5xf32>, tensor<5x10xf32>, tensor<10xf32>) -> tensor<*xf32>, sym_name = "test_gemm_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x5xf32>, %arg1: tensor<5x10xf32>, %arg2: tensor<10xf32>):
    %0 = "onnx.Gemm"(%arg0, %arg1, %arg2) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<?x5xf32>, tensor<5x10xf32>, tensor<10xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

