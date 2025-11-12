"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?xf32>, tensor<?x?xf32>, tensor<4x?xf32>) -> tensor<?x?xf32>, sym_name = "dont_lower_non_outer_dim_concat"}> ({
  ^bb0(%arg0: tensor<4x?xf32>, %arg1: tensor<?x?xf32>, %arg2: tensor<4x?xf32>):
    %0 = "tensor.concat"(%arg0, %arg1, %arg2) <{dim = 1 : i64}> : (tensor<4x?xf32>, tensor<?x?xf32>, tensor<4x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

