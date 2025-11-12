"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<3xi32>) -> (tensor<2xi32>, tensor<3xi32>), sym_name = "npy_round_trip"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<3xi32>):
    "func.return"(%arg0, %arg1) : (tensor<2xi32>, tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

