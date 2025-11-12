"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi32>) -> (tensor<2x3xi32>, tensor<2x3xi8>), sym_name = "mixed_type_concat"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi32>):
    %0 = "llvm.mlir.constant"() <{value = dense<42> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "arith.addi"(%arg1, %0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %2 = "llvm.mlir.constant"() <{value = dense<1> : tensor<2x3xi8>}> : () -> tensor<2x3xi8>
    %3 = "arith.addi"(%arg0, %2) : (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>
    "func.return"(%1, %3) : (tensor<2x3xi32>, tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()