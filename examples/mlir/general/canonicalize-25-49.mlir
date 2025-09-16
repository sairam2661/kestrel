"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "select_not_pred"}> ({
  ^bb0(%arg0: tensor<2x3xi1>, %arg1: tensor<2x3xi32>, %arg2: tensor<2x3xi32>):
    %0 = "tosa.logical_not"(%arg0) : (tensor<2x3xi1>) -> tensor<2x3xi1>
    %1 = "tosa.select"(%0, %arg1, %arg2) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

