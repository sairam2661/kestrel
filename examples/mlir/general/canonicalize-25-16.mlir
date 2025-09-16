"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>) -> tensor<4xf32>, sym_name = "clamp_f32_not_noop"}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 3.40282347E+38 : f32, min_val = -3.40282347E+38 : f32, nan_mode = "PROPAGATE"}> : (tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

