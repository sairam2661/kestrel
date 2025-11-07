"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x5xf32>, tensor<5x5xf32>) -> tensor<1x5xf32>, sym_name = "test_no_c"}> ({
  ^bb0(%arg0: tensor<1x5xf32>, %arg1: tensor<5x5xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Gemm"(%arg0, %arg1, %0) {alpha = 1.000000e+00 : f32, beta = 1.664000e+00 : f32, transA = 0 : si64, transB = 1 : si64} : (tensor<1x5xf32>, tensor<5x5xf32>, none) -> tensor<1x5xf32>
    "func.return"(%1) : (tensor<1x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

