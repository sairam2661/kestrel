"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<*xf32>) -> tensor<*xf32>, sym_name = "customop_fusedmatmul_not_rewrite_domain"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<*xf32>):
    %0 = "onnx.Transpose"(%arg1) {perm = [0, 2, 1, 3]} : (tensor<*xf32>) -> tensor<*xf32>
    %1 = "onnx.Custom"(%arg0, %0) {alpha = 1.250000e-01 : f32, domain_name = "abc.xyz", function_name = "FusedMatMul", transA = 0 : si64, transB = 1 : si64} : (tensor<*xf32>, tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

