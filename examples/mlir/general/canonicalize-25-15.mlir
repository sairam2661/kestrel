"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "clamp_i32_not_noop"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "tosa.clamp"(%arg0) <{max_val = 4 : i32, min_val = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

