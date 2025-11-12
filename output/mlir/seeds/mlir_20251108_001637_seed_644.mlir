"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<4x3xi8>, sym_name = "concat_and_add"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<4x3xi8>
    %1 = "tosa.const"() <{values = dense<5> : tensor<4x3xi8>}> : () -> tensor<4x3xi8>
    %2 = "tosa.add"(%0, %1) : (tensor<4x3xi8>, tensor<4x3xi8>) -> tensor<4x3xi8>
    "func.return"(%2) : (tensor<4x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()