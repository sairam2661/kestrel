"builtin.module"() ({
  "func.func"() <{function_type = (tensor<6x6xf32>) -> tensor<6xf32>, sym_name = "einsum_diag"}> ({
  ^bb0(%arg8: tensor<6x6xf32>):
    %4 = "stablehlo.constant"() <{value = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %5 = "stablehlo.einsum"(%4, %arg8) <{einsum_config = ",ii->i"}> : (tensor<f32>, tensor<6x6xf32>) -> tensor<6xf32>
    "func.return"(%5) : (tensor<6xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<8x2x6xf32>, tensor<8x5x3x6xf32>) -> tensor<8x5x3x2xf32>, sym_name = "einsum_batched_matrix_high_rank_vector_mul"}> ({
  ^bb0(%arg6: tensor<8x2x6xf32>, %arg7: tensor<8x5x3x6xf32>):
    %3 = "stablehlo.einsum"(%arg6, %arg7) <{einsum_config = "bxy,bijy->bijx"}> : (tensor<8x2x6xf32>, tensor<8x5x3x6xf32>) -> tensor<8x5x3x2xf32>
    "func.return"(%3) : (tensor<8x5x3x2xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "matmul"}> ({
  ^bb0(%arg4: tensor<?x?xf32>, %arg5: tensor<?x?xf32>):
    %2 = "stablehlo.einsum"(%arg4, %arg5) <{einsum_config = "ij,jk->ik"}> : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%2) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?x?xf32>, tensor<?xf32>) -> tensor<?xf32>, sym_name = "matvec"}> ({
  ^bb0(%arg2: tensor<?x?xf32>, %arg3: tensor<?xf32>):
    %1 = "stablehlo.einsum"(%arg2, %arg3) <{einsum_config = "ij,j->i"}> : (tensor<?x?xf32>, tensor<?xf32>) -> tensor<?xf32>
    "func.return"(%1) : (tensor<?xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> tensor<f32>, sym_name = "dot"}> ({
  ^bb0(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>):
    %0 = "stablehlo.einsum"(%arg0, %arg1) <{einsum_config = "i,i->"}> : (tensor<?xf32>, tensor<?xf32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

