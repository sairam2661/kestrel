"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<8x8xi32>, sym_name = "tensor_concat"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "tosa.const"() <{value = dense<0> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "tosa.const"() <{value = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %2 = "tosa.const"() <{value = dense<2> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %3 = "tosa.const"() <{value = dense<3> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %4 = "tosa.const"() <{value = dense<4> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %5 = "tosa.const"() <{value = dense<5> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %6 = "tosa.const"() <{value = dense<6> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %7 = "tosa.const"() <{value = dense<7> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %8 = "tosa.concatenate"(%arg0, %arg1) <{axis = 0}> : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<8x4xi32>
      %9 = "tosa.concatenate"(%8, %0) <{axis = 1}> : (tensor<8x4xi32>, tensor<4x4xi32>) -> tensor<8x8xi32>
      "func.return"(%9) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()