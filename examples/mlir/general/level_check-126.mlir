"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x260000000x3xf32>, tensor<13x260000000xi32>, tensor<13x260000000x3xf32>) -> tensor<13x260000000x3xf32>, sym_name = "test_scatter_tensor_size_invalid"}> ({
  ^bb0(%arg0: tensor<13x260000000x3xf32>, %arg1: tensor<13x260000000xi32>, %arg2: tensor<13x260000000x3xf32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<13x260000000x3xf32>, tensor<13x260000000xi32>, tensor<13x260000000x3xf32>) -> tensor<13x260000000x3xf32>
    "func.return"(%0) : (tensor<13x260000000x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

