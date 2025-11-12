"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "arg0_unused"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<4xf32>):
    "func.return"(%arg1) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

