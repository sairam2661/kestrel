"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x29x29x4xf32>) -> tensor<1x1x1x1x29x4xi32>, sym_name = "test_argmax_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x29x29x4xf32>):
    %0 = "tosa.argmax"(%arg0) <{axis = 4 : i32, nan_mode = "PROPAGATE"}> : (tensor<1x1x1x1x29x29x4xf32>) -> tensor<1x1x1x1x29x4xi32>
    "func.return"(%0) : (tensor<1x1x1x1x29x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

