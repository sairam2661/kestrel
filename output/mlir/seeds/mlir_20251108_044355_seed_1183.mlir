"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi1>, tensor<8x8xi1>, tensor<8x8xi1>) -> tensor<8x8xi1>, sym_name = "tosa_xor_combinations"}> ({
  ^bb0(%arg0: tensor<8x8xi1>, %arg1: tensor<8x8xi1>, %arg2: tensor<8x8xi1>):
    %0 = "tosa.const"() <{value = dense<1> : tensor<8x8xi1>}> : () -> tensor<8x8xi1>
    %1 = "tosa.xor"(%arg0, %arg1) : (tensor<8x8xi1>, tensor<8x8xi1>) -> tensor<8x8xi1>
    %2 = "tosa.xor"(%1, %arg2) : (tensor<8x8xi1>, tensor<8x8xi1>) -> tensor<8x8xi1>
    %3 = "tosa.xor"(%2, %0) : (tensor<8x8xi1>, tensor<8x8xi1>) -> tensor<8x8xi1>
    "func.return"(%3) : (tensor<8x8xi1>) -> ()
  }) : () -> ()
}) : () -> ()