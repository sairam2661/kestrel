"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3xi32>, tensor<1x2x3xi32>) -> tensor<1x2x3xi32>, sym_name = "matrix_addition"}> ({
  ^bb0(%arg0: tensor<1x2x3xi32>, %arg1: tensor<1x2x3xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{fastmath = #arithfastmathnone}> : (tensor<1x2x3xi32>, tensor<1x2x3xi32>) -> tensor<1x2x3xi32>
    %1 = "tosa.const"() <{values = dense<10> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "arith.muli"(%0, %1) <{fastmath = #arithfastmathnone}> : (tensor<1x2x3xi32>, tensor<1xi32>) -> tensor<1x2x3xi32>
    "func.return"(%2) : (tensor<1x2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()