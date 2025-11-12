"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>, sym_name = "bitwise_xor_tensors"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.xor"(%arg0, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    %1 = "arith.cmpi"("ne", %0, %arg0) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi1>
    "func.return"(%1) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()