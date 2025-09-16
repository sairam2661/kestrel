"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3xf32>, tensor<?x3xf32>) -> (), sym_name = "concat_axis_dyn"}> ({
  ^bb0(%arg0: tensor<?x3xf32>, %arg1: tensor<?x3xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<?x3xf32>, tensor<?x3xf32>) -> tensor<?x3xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

