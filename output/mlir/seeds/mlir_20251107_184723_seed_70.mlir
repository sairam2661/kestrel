"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_select"}> ({
    ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
      %0 = "llvm.mlir.constant"() <{value = dense<true> : tensor<2xi1>}> : () -> tensor<2xi1>
      %1 = "llvm.select"(%0, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      %2 = "llvm.mlir.constant"() <{value = dense<false> : tensor<2xi1>}> : () -> tensor<2xi1>
      %3 = "llvm.select"(%2, %arg0, %arg1) : (tensor<2xi1>, tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
      "llvm.return"(%1) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()