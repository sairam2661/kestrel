"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x1x3xf32>, tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xi1>, sym_name = "test_greater_equal_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x1x3xf32>, %arg1: tensor<1x1x1x1x13x21x3xf32>):
    %0 = "tosa.greater_equal"(%arg0, %arg1) : (tensor<1x1x1x1x13x1x3xf32>, tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xi1>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

