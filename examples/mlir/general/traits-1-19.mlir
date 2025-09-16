"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>, sym_name = "broadcastDifferentResultType"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi1>
    "func.return"(%0) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()

