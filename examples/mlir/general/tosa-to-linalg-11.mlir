"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>, sym_name = "test_add_1d_matching_static"}> ({
  ^bb0(%arg0: tensor<3xf32>, %arg1: tensor<3xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
    "func.return"(%0) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

