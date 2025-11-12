"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> (tensor<2xi32>, tensor<2xi32>), sym_name = "multi_input"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    "func.return"(%arg0, %arg1) : (tensor<2xi32>, tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

