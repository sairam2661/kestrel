"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?xf32>, tensor<?x3xf32>) -> tensor<2x3xf32>, sym_name = "matrix_multiply_with_dynamic_size"}> ({
    ^bb0(%arg0: tensor<2x?xf32>, %arg1: tensor<?x3xf32>):
      %0 = "llvm.mlir.constant"() <{value = 0.000000e+00, type = f32}> : () -> f32
      %1 = "llvm.mlir.constant"() <{value = 0.000000e+00, type = f32}> : () -> f32
      %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<2x?xf32>, tensor<?x3xf32>, f32, f32) -> tensor<2x3xf32>
      "llvm.return"(%2) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()