"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>, sym_name = "stress_add"}> ({
  ^bb0(%arg0: tensor<10xi32>, %arg1: tensor<10xi32>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    %3 = "arith.addi"(%2, %0) : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    "func.return"(%3) : (tensor<10xi32>) -> ()
  }) : () -> ()
}) : () -> ()