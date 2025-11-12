"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>, sym_name = "xor_and_add"}> ({
    ^bb0(%arg0: tensor<3x3xi8>, %arg1: tensor<3x3xi8>):
      %0 = "arith.xor"(%arg0, %arg1) : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>
      %1 = "arith.cmpi"(%arg0, %arg1, "ne") : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi1>
      %2 = "arith.addi"(%arg0, %arg1) : (tensor<3x3xi8>, tensor<3x3xi8>) -> tensor<3x3xi8>
      "func.return"(%2) : (tensor<3x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()