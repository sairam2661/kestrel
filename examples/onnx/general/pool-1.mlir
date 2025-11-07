"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x32x32x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<*xf16>, sym_name = "maxpool_same_padding"}> ({
  ^bb0(%arg0: tensor<1x32x32x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "zhigh.MaxPool2D"(%arg0) {act_func = "ACT_NONE", kernel_shape = [2, 2], padding_type = "SAME_PADDING", strides = [1, 1]} : (tensor<1x32x32x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<*xf16>
    "func.return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

