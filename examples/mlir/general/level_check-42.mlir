"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>, sym_name = "test_reduce_min_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xf32>):
    %0 = "tosa.reduce_min"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

