"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xf32>, tensor<5x4xf32>) -> (), sym_name = "reduce_min_nan_propagate"}> ({
  ^bb0(%arg0: tensor<5x4xf32>, %arg1: tensor<5x4xf32>):
    %0 = "tosa.reduce_min"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<5x4xf32>) -> tensor<1x4xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

