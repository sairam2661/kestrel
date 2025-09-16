"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xi1>, tensor<1x1x1x1x13x21x3xi1>) -> tensor<1x1x1x1x13x21x3xi1>, sym_name = "test_logical_and_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xi1>, %arg1: tensor<1x1x1x1x13x21x3xi1>):
    %0 = "tosa.logical_and"(%arg0, %arg1) : (tensor<1x1x1x1x13x21x3xi1>, tensor<1x1x1x1x13x21x3xi1>) -> tensor<1x1x1x1x13x21x3xi1>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

