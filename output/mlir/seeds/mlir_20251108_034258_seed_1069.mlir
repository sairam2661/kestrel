"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi64>, sym_name = "complex_combination"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "arith.addi"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %2 = "arith.addi"(%1, %0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %3 = "arith.extui"(%2) : (tensor<2x3xi32>) -> tensor<2x3xi64>
    "func.return"(%3) : (tensor<2x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()