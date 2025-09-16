"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_clamp"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 1.000000e+00 : f32, min_val = 0.000000e+00 : f32, nan_mode = "PROPAGATE"}> : (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

