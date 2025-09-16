"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xi32>, tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>, sym_name = "test_logical_right_shift_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xi32>, %arg1: tensor<1x1x1x1x13x21x3xi32>):
    %0 = "tosa.logical_right_shift"(%arg0, %arg1) : (tensor<1x1x1x1x13x21x3xi32>, tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

