"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x?xi32>) -> (), sym_name = "argmax_dyn_axis"}> ({
  ^bb0(%arg0: tensor<3x?xi32>):
    %0 = "tosa.argmax"(%arg0) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<3x?xi32>) -> tensor<3xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

