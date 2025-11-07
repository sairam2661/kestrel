"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x128xf32>, tensor<128x128xf32>, tensor<128xf32>) -> tensor<*xf32>, sym_name = "test_gemm_add_fusion_beta_zero"}> ({
  ^bb0(%arg0: tensor<128x128xf32>, %arg1: tensor<128x128xf32>, %arg2: tensor<128xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Gemm"(%arg0, %arg1, %0) {alpha = 1.000000e+00 : f32, beta = 0.000000e+00 : f32, transA = 0 : si64, transB = 0 : si64} : (tensor<128x128xf32>, tensor<128x128xf32>, none) -> tensor<*xf32>
    %2 = "onnx.Add"(%1, %arg2) : (tensor<*xf32>, tensor<128xf32>) -> tensor<*xf32>
    "onnx.Return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

