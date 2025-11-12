"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi32>) -> tensor<3x3xi32>, sym_name = "matrixOpTest"}> ({
  ^bb0(%arg0: tensor<3x3xi32>):
    %0 = "arith.addi"(%arg0, %arg0) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
    ^bb1(%0: tensor<3x3xi32>):
      %1 = "arith.muli"(%0, %0) : (tensor<3x3xi32>, tensor<3x3xi32>) -> tensor<3x3xi32>
      "func.return"(%1) : (tensor<3x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()