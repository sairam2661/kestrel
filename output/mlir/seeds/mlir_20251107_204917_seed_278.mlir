"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "tensor_add_with_constraints"}> ({
    ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
      %0 = "tosa.const"() <{value = dense<42> : tensor<2x3xi8>}> : () -> tensor<2x3xi8>
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
      %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
      "func.return"(%2) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()