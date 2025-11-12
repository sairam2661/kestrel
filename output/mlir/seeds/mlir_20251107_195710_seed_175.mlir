"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>, sym_name = "custom_add"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi8>):
    %cst = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
    %1 = "tosa.add"(%0, %cst) : (tensor<3xi8>, i8) -> tensor<3xi8>
    "func.return"(%1) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()