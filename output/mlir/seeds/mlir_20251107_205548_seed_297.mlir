"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10x8xi32>, tensor<?x8x16xi32>) -> tensor<?x10x16xi32>, sym_name = "tensor_matmul"}> ({
    ^bb0(%arg0: tensor<?x10x8xi32>, %arg1: tensor<?x8x16xi32>):
      %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
      %1 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
      %2 = "tosa.matmul"(%arg0, %arg1, %0, %1) : (tensor<?x10x8xi32>, tensor<?x8x16xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<?x10x16xi32>
      "func.return"(%2) : (tensor<?x10x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()