"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<*xf16>, sym_name = "should_lower_to_zlow"}> ({
  ^bb0(%arg0: tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>):
    %0 = "zhigh.Softmax"(%arg0) {act_func = "ACT_NONE"} : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

