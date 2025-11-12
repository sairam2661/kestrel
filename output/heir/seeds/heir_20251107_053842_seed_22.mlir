"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>, sym_name = "xor_tensor"}> ({
  ^bb0(%arg0: tensor<8xi8>, %arg1: tensor<8xi8>):
    %0 = "arith.constant"() <{value = dense<1 : i8> : tensor<8xi8>}> : () -> tensor<8xi8>
    %1 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>
    %2 = "arith.xori"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi8>, tensor<8xi8>) -> tensor<8xi8>
    "func.return"(%2) : (tensor<8xi8>) -> ()
  }) : () -> ()
}) : () -> ()