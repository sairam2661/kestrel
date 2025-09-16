"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xf32>, tensor<5x4xf32>) -> (), sym_name = "maximum_nan_ignore"}> ({
  ^bb0(%arg0: tensor<5x4xf32>, %arg1: tensor<5x4xf32>):
    %0 = "tosa.maximum"(%arg0, %arg1) <{nan_mode = "IGNORE"}> : (tensor<5x4xf32>, tensor<5x4xf32>) -> tensor<5x4xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

