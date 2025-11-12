"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x5xi8>, tensor<2x5xi8>) -> tensor<2x5xi1>, sym_name = "bitwise_or_and"}> ({
  ^bb0(%arg0: tensor<2x5xi8>, %arg1: tensor<2x5xi8>):
    %0 = "tosa.bitwise_or"(%arg0, %arg1) : (tensor<2x5xi8>, tensor<2x5xi8>) -> tensor<2x5xi8>
    %1 = "tosa.bitwise_and"(%0, %arg1) : (tensor<2x5xi8>, tensor<2x5xi8>) -> tensor<2x5xi8>
    %2 = "arith.cmpi"(%1, %arg0, "ne") : (tensor<2x5xi8>, tensor<2x5xi8>) -> tensor<2x5xi1>
    "func.return"(%2) : (tensor<2x5xi1>) -> ()
  }) : () -> ()
}) : () -> ()