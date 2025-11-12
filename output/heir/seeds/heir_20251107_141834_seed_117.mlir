"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "bitwise_xor"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = dense<0xFFFFFFFF> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %1 = "arith.xori"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "arith.xori"(%1, %0) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "func.return"(%2) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()