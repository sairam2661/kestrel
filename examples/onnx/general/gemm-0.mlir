"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x5xf32>, tensor<5x10xf32>) -> tensor<*xf32>, sym_name = "test_gemm_bias_none"}> ({
  ^bb0(%arg0: tensor<10x5xf32>, %arg1: tensor<5x10xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Gemm"(%arg0, %arg1, %0) {alpha = 1.000000e+00 : f32, beta = 1.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<10x5xf32>, tensor<5x10xf32>, none) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

