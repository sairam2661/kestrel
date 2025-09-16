"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x1xi32>) -> tensor<1x1x1x1x13x21x1xi32>, sym_name = "test_bitwise_not_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x1xi32>):
    %0 = "tosa.bitwise_not"(%arg0) : (tensor<1x1x1x1x13x21x1xi32>) -> tensor<1x1x1x1x13x21x1xi32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

