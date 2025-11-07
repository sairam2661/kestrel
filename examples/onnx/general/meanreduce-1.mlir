"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x?x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<*xf16>, sym_name = "should_lower_to_zlow_unknown_dims"}> ({
  ^bb0(%arg0: tensor<1x?x?x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "zhigh.MeanReduce2d"(%arg0) : (tensor<1x?x?x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

