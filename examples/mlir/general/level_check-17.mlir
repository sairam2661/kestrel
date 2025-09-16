"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x1x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>, sym_name = "test_min_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xf32>, %arg1: tensor<1x1x1x1x1x21x3xf32>):
    %0 = "tosa.minimum"(%arg0, %arg1) <{nan_mode = "PROPAGATE"}> : (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x1x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

