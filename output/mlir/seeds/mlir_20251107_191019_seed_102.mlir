"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>, sym_name = "complex_addition"}> ({
  ^bb0(%arg0: tensor<3x4xi32>, %arg1: tensor<3x4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
    %1 = "tosa.const"() <{value = dense<42> : tensor<3x4xi32>}> : () -> tensor<3x4xi32>
    %2 = "arith.addi"(%0, %1) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
    "func.return"(%2) : (tensor<3x4xi32>) -> ()
  }) : (tensor<3x4xi32>, tensor<3x4xi32>) -> tensor<3x4xi32>
}) : () -> ()