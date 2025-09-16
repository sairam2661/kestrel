"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi8>, tensor<13x1x3xi8>, tensor<1xi8>) -> tensor<13x21x3xi16>, sym_name = "test_mul_non_const"}> ({
  ^bb0(%arg0: tensor<13x21x3xi8>, %arg1: tensor<13x1x3xi8>, %arg2: tensor<1xi8>):
    %0 = "tosa.mul"(%arg0, %arg1, %arg2) : (tensor<13x21x3xi8>, tensor<13x1x3xi8>, tensor<1xi8>) -> tensor<13x21x3xi16>
    "func.return"(%0) : (tensor<13x21x3xi16>) -> ()
  }) : () -> ()
}) : () -> ()

