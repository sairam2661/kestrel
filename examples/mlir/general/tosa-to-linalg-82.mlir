"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xf32>, tensor<5x4xf32>) -> (), sym_name = "clamp_nan_propagate"}> ({
  ^bb0(%arg0: tensor<5x4xf32>, %arg1: tensor<5x4xf32>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 5.000000e+00 : f32, min_val = 1.000000e+00 : f32, nan_mode = "PROPAGATE"}> : (tensor<5x4xf32>) -> tensor<5x4xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

