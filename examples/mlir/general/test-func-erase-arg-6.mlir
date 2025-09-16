"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {test.erase_this_arg}, {}, {test.erase_this_arg}, {}], function_type = (tensor<1xf32>, f32, tensor<2xf32>, f32, tensor<3xf32>) -> (), sym_name = "f"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: f32, %arg2: tensor<2xf32>, %arg3: f32, %arg4: tensor<3xf32>):
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

