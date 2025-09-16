"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>, tensor<?x1xf32>, tensor<?x1xf32>) -> (), sym_name = "concat_non_axis_dyn_mixed"}> ({
  ^bb0(%arg0: tensor<?x1xf32>, %arg1: tensor<?x1xf32>, %arg2: tensor<?x1xf32>):
    %0 = "tosa.concat"(%arg0, %arg1, %arg2) <{axis = 1 : i32}> : (tensor<?x1xf32>, tensor<?x1xf32>, tensor<?x1xf32>) -> tensor<5x3xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

