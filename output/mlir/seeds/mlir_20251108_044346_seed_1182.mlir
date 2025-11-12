"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "tosa_complex_op_sequence"}> ({
    ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
      %0 = "tosa.const"() <{value = dense<0> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
      %1 = "tosa.add"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      %2 = "tosa.sub"(%1, %0) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      %3 = "tosa.mul"(%2, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
      "func.return"(%3) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()