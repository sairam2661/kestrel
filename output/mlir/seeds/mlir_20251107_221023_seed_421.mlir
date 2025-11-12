"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "bitwise_xor_and_or"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %2 = "tosa.bitwise_xor"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    %3 = "tosa.bitwise_and"(%2, %arg0) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    %4 = "tosa.bitwise_or"(%3, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%4) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>, sym_name = "logical_and_or_xor"}> ({
  ^bb0(%arg0: tensor<2x3xi1>, %arg1: tensor<2x3xi1>):
    %2 = "arith.andi"(%arg0, %arg1) : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    %3 = "arith.ori"(%2, %arg0) : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    %4 = "arith.xori"(%3, %arg1) : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    "func.return"(%4) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()