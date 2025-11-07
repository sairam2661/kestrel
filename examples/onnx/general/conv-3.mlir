"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<2x2x?x1xf16, #zhigh.layout<{dataLayout = "HWCK"}>>, tensor<?xf16, #zhigh.layout<{dataLayout = "1D"}>>) -> tensor<*xf16>, sym_name = "conv_same_padding_unknown_dims"}> ({
  ^bb0(%arg0: tensor<1x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, %arg1: tensor<2x2x?x1xf16, #zhigh.layout<{dataLayout = "HWCK"}>>, %arg2: tensor<?xf16, #zhigh.layout<{dataLayout = "1D"}>>):
    %0 = "zhigh.Conv2D"(%arg0, %arg1, %arg2) {act_func = "ACT_NONE", kernel_shape = [2, 2], padding_type = "SAME_PADDING", strides = [1, 1]} : (tensor<1x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<2x2x?x1xf16, #zhigh.layout<{dataLayout = "HWCK"}>>, tensor<?xf16, #zhigh.layout<{dataLayout = "1D"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

