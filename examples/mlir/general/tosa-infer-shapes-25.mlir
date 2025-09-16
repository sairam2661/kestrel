"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x1xf32>, tensor<2x2xf32>) -> (), sym_name = "test_concat_axis_1"}> ({
  ^bb0(%arg0: tensor<2x1xf32>, %arg1: tensor<2x2xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 1 : i32}> : (tensor<2x1xf32>, tensor<2x2xf32>) -> tensor<?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

