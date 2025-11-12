"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3xf32>, tensor<2x3x4xf32>, tensor<1x4xf32>, tensor<1xf32>) -> tensor<1x2x4xf32>, sym_name = "test_matrix_multiply_with_bias"}> ({
  ^bb0(%arg0: tensor<1x2x3xf32>, %arg1: tensor<2x3x4xf32>, %arg2: tensor<1x4xf32>, %arg3: tensor<1xf32>):
    %0 = "tosa.matmul"(%arg0, %arg1, %arg2, %arg3) : (tensor<1x2x3xf32>, tensor<2x3x4xf32>, tensor<1x4xf32>, tensor<1xf32>) -> tensor<1x2x4xf32>
    %1 = "arith.constant"() <{value = 0.500000e+00 : f32}> : () -> f32
    %2 = "arith.addf"(%0, %1) : (tensor<1x2x4xf32>, f32) -> tensor<1x2x4xf32>
    "func.return"(%2) : (tensor<1x2x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()