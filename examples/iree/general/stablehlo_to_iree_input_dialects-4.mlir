"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tf.aliasing_output = 1 : i32}, {}], function_type = (tensor<3x4xf32>, tensor<4xui32>) -> (tensor<4xui32>, tensor<3x4xf32>), sym_name = "aliasing_output"}> ({
  ^bb0(%arg0: tensor<3x4xf32>, %arg1: tensor<4xui32>):
    "func.return"(%arg1, %arg0) : (tensor<4xui32>, tensor<3x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

