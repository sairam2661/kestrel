"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "test_xor_and"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "llvm.mlir.constant"() <{value = dense<0> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "arith.xor"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %2 = "arith.and"(%1, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "llvm.return"(%2) : (tensor<4x4xi32>) -> ()
    }) : () -> ()
}) : () -> ()