"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>, sym_name = "test_xor"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi8>):
    %0 = "tosa.xor"(%arg0, %arg1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
    "func.return"(%0) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()