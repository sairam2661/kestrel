"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "test_xor_bitwise"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "llvm.mlir.constant"() <{value = dense<16> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "tosa.bitwise_xor"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %2 = "tosa.bitwise_and"(%1, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "llvm.return"(%2) : (tensor<4x4xi32>) -> ()
    }) : () -> ()
  }) : () -> ()