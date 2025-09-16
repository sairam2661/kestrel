"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi16>, sym_name = "test_cast_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xi32>):
    %0 = "tosa.cast"(%arg0) : (tensor<1x1x1x1x13x21x3xi32>) -> tensor<1x1x1x1x13x21x3xi16>
    "func.return"(%0) : (tensor<1x1x1x1x13x21x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()

