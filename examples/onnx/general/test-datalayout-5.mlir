"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x7xf32>) -> tensor<*xf16>, sym_name = "should_lower_to_zlow_4d"}> ({
  ^bb0(%arg0: tensor<1x3x5x7xf32>):
    %0 = "zhigh.Stick"(%arg0) {layout = "4D"} : (tensor<1x3x5x7xf32>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

