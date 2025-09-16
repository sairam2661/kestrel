"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xf32>, tensor<5x4xf32>) -> (), sym_name = "argmax_nan_ignore"}> ({
  ^bb0(%arg0: tensor<5x4xf32>, %arg1: tensor<5x4xf32>):
    %0 = "tosa.argmax"(%arg0) <{axis = 0 : i32, nan_mode = "IGNORE"}> : (tensor<5x4xf32>) -> tensor<4xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

