"builtin.module" () ({
  "func.func" () <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "complex_tensor_op"}> ({
    ^bb0 (%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
      %0 = "llvm.mlir.constant" () <{value = dense<0> : tensor<3xi32>}> : () -> tensor<3xi32>
      %1 = "arith.addi" (%arg0, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
      %2 = "arith.subi" (%1, %0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
      "llvm.return" (%2) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()