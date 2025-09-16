"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x21x1xf32>) -> tensor<1x1x1x1x13x21x3xf32>, sym_name = "test_pow_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xf32>, %arg1: tensor<1x1x1x1x13x21x1xf32>):
    %0 = "tosa.pow"(%arg0, %arg1) : (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x21x1xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

