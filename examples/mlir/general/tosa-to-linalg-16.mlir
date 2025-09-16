"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi16>) -> (), sym_name = "test_simple_i16"}> ({
  ^bb0(%arg0: tensor<1xi16>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.mul"(%arg0, %arg0, %0) : (tensor<1xi16>, tensor<1xi16>, tensor<1xi8>) -> tensor<1xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

