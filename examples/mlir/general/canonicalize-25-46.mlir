"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi1>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "select_same_value"}> ({
  ^bb0(%arg0: tensor<2x3xi1>, %arg1: tensor<2x3xi32>):
    %0 = "tosa.select"(%arg0, %arg1, %arg1) : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%0) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

