"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x13x21x3xi8>, tensor<1x1x13x21x3xi8>) -> tensor<1x1x13x21x3xi8>, sym_name = "test_xor_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x13x21x3xi8>, %arg1: tensor<1x1x13x21x3xi8>):
    %0 = "tosa.xor"(%arg0, %arg1) : (tensor<1x1x13x21x3xi8>, tensor<1x1x13x21x3xi8>) -> tensor<1x1x13x21x3xi8>
    "func.return"(%0) : (tensor<1x1x13x21x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()