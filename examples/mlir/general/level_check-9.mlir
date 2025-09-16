"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xi32>, tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>, sym_name = "test_bitwise_xor_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xi32>, %arg1: tensor<1x1x1x1x13x21x3xi32>):
    %0 = "tosa.bitwise_xor"(%arg0, %arg1) : (tensor<1x1x1x1x13x21x3xi32>, tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi32>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

