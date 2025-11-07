"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x5x7xf32>, tensor<2x5x7xf32>, tensor<2x5x7xf32>) -> tensor<*xf16>, sym_name = "should_lower_to_zlow_zrh"}> ({
  ^bb0(%arg0: tensor<2x5x7xf32>, %arg1: tensor<2x5x7xf32>, %arg2: tensor<2x5x7xf32>):
    %0 = "zhigh.StickForGRU"(%arg0, %arg1, %arg2) : (tensor<2x5x7xf32>, tensor<2x5x7xf32>, tensor<2x5x7xf32>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

