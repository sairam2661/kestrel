"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "xor_with_broadcast"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %0 = "arith.constant"() <{value = dense<-128> : tensor<2x3xi8>}> : () -> tensor<2x3xi8>
    %1 = "arith.xori"(%arg0, %0) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    %2 = "arith.xori"(%1, %arg1) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%2) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()