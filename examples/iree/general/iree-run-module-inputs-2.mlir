"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<2xi32>, tensor<2x3xi32>) -> (tensor<i32>, tensor<2xi32>, tensor<2x3xi32>), sym_name = "buffers"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<2xi32>, %arg2: tensor<2x3xi32>):
    "func.return"(%arg0, %arg1, %arg2) : (tensor<i32>, tensor<2xi32>, tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

