"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>, sym_name = "test_add_1d_matching_no_broadcast"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<1xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    "func.return"(%0) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

