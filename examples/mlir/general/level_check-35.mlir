"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x1x1x1xi1>, tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>, sym_name = "test_select_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x1x1x1xi1>, %arg1: tensor<1x1x1x1x13x21x3xf32>, %arg2: tensor<1x1x1x1x13x21x3xf32>):
    %0 = "tosa.select"(%arg0, %arg1, %arg2) : (tensor<1x1x1x1x1x1x1xi1>, tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

