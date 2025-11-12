"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "complex_op_combinations"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>, %arg2: tensor<2x3xi8>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    %1 = "arith.cmpi"(%0, %arg2, "slt") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    %2 = "arith.cmpi"(%0, %arg2, "sle") : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    %3 = "arith.andi"(%1, %2) : (tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
    %4 = "arith.select"(%3, %arg0, %arg1) : (tensor<2x3xi1>, tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%4) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()