"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>, tensor<2x0xi32>) -> tensor<2x6xi32>, sym_name = "concat_remove_zero_extents"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>, %arg2: tensor<2x0xi32>):
    %0 = "stablehlo.concatenate"(%arg0, %arg1, %arg2) <{dimension = 1 : i64}> : (tensor<2x3xi32>, tensor<2x3xi32>, tensor<2x0xi32>) -> tensor<2x6xi32>
    "func.return"(%0) : (tensor<2x6xi32>) -> ()
  }) : () -> ()
}) : () -> ()

