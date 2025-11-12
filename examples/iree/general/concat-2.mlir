"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?xf32>, tensor<?x2xf32>) -> tensor<?x2xf32>, sym_name = "mixed_concat_static_dim"}> ({
  ^bb0(%arg0: tensor<2x?xf32>, %arg1: tensor<?x2xf32>):
    %0 = "tensor.concat"(%arg0, %arg1) <{dim = 0 : i64}> : (tensor<2x?xf32>, tensor<?x2xf32>) -> tensor<?x2xf32>
    "func.return"(%0) : (tensor<?x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

