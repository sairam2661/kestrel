"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "tensor_add_with_splat"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "arith.addi"(%arg0, %0) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %2 = "arith.addi"(%1, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<10xi32>}> : () -> tensor<10xi32>
    %4 = "arith.addi"(%2, %3) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%4) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()