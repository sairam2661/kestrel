"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi16>, tensor<13x1x3xi16>) -> tensor<13x21x3xi16>, sym_name = "test_mul_relaxed_result_type"}> ({
  ^bb0(%arg0: tensor<13x21x3xi16>, %arg1: tensor<13x1x3xi16>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.mul"(%arg0, %arg1, %0) : (tensor<13x21x3xi16>, tensor<13x1x3xi16>, tensor<1xi8>) -> tensor<13x21x3xi16>
    "func.return"(%1) : (tensor<13x21x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()

