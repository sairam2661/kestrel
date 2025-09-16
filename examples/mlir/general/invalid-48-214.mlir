"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x52x3xf32>, tensor<2x12x3xf32>) -> tensor<2x52x3xf32>, sym_name = "test_scatter_duplicate_indices"}> ({
  ^bb0(%arg0: tensor<2x52x3xf32>, %arg1: tensor<2x12x3xf32>):
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], [1, 2, 3, 4, 5, 6, 7, 8, 9, 3, 11, 12]]> : tensor<2x12xi32>}> : () -> tensor<2x12xi32>
    %1 = "tosa.scatter"(%arg0, %0, %arg1) : (tensor<2x52x3xf32>, tensor<2x12xi32>, tensor<2x12x3xf32>) -> tensor<2x52x3xf32>
    "func.return"(%1) : (tensor<2x52x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

