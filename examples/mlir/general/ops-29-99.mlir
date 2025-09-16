"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<*xi32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_scatter_unranked_indices"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<*xi32>, %arg2: tensor<13x21x3xf32>):
    %0 = "tosa.scatter"(%arg0, %arg1, %arg2) : (tensor<13x21x3xf32>, tensor<*xi32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

