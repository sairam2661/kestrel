"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x?x7xf32>) -> tensor<*xf32>, sym_name = "should_lower_to_zlow_unknown_dims"}> ({
  ^bb0(%arg0: tensor<1x?x?x7xf32>):
    %0 = "zhigh.Stick"(%arg0) {layout = "NHWC"} : (tensor<1x?x?x7xf32>) -> tensor<*xf16>
    %1 = "zhigh.Unstick"(%0) : (tensor<*xf16>) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

