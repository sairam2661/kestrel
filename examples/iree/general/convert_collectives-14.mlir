"builtin.module"() ({
  "func.func"() <{function_type = (tensor<512xf32>) -> tensor<1024xf32>, sym_name = "all_gather_dim_0_optional_attrs"}> ({
  ^bb0(%arg0: tensor<512xf32>):
    %0 = "stablehlo.all_gather"(%arg0) <{all_gather_dim = 0 : i64, replica_groups = dense<[[0, 1]]> : tensor<1x2xi64>}> : (tensor<512xf32>) -> tensor<1024xf32>
    "func.return"(%0) : (tensor<1024xf32>) -> ()
  }) : () -> ()
}) : () -> ()

