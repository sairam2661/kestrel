"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<*xi32>) -> tensor<13x26x3xf32>, sym_name = "test_gather_unranked_indices"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<*xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<13x21x3xf32>, tensor<*xi32>) -> tensor<13x26x3xf32>
    "func.return"(%0) : (tensor<13x26x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

