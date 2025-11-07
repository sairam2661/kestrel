"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x7x9xf32>, tensor<3x5x7x9xf32>) -> tensor<3x5x9x9xf32>, sym_name = "customop_fusedmatmul_onnxruntime"}> ({
  ^bb0(%arg0: tensor<3x5x7x9xf32>, %arg1: tensor<3x5x7x9xf32>):
    %0 = "onnx.Custom"(%arg0, %arg1) {alpha = 1.250000e-01 : f32, domain_name = "com.microsoft", function_name = "FusedMatMul", transA = 1 : si64, transB = 0 : si64} : (tensor<3x5x7x9xf32>, tensor<3x5x7x9xf32>) -> tensor<3x5x9x9xf32>
    "onnx.Return"(%0) : (tensor<3x5x9x9xf32>) -> ()
  }) : () -> ()
}) : () -> ()

