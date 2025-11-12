"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi32>, tensor<10x10xi64>) -> tensor<10x10xi64>, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: tensor<10x10xi32>, %arg1: tensor<10x10xi64>):
    %0 = "tosa.const"() <{value = dense<42> : tensor<10x10xi32>}> : () -> tensor<10x10xi32>
    %1 = "arith.addi"(%0, %arg0) : (tensor<10x10xi32>, tensor<10x10xi32>) -> tensor<10x10xi32>
    %2 = "arith.extui"(%1) : (tensor<10x10xi32>) -> tensor<10x10xi64>
    %3 = "arith.addi"(%2, %arg1) : (tensor<10x10xi64>, tensor<10x10xi64>) -> tensor<10x10xi64>
    "func.return"(%3) : (tensor<10x10xi64>) -> ()
  }) : () -> ()
}) : () -> ()