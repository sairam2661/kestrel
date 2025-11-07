"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x32x32x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<2x2x3x1xf16, #zhigh.layout<{dataLayout = "HWCK"}>>) -> tensor<*xf16>, sym_name = "conv_same_padding_no_bias_unknown_dims"}> ({
  ^bb0(%arg0: tensor<1x32x32x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, %arg1: tensor<2x2x3x1xf16, #zhigh.layout<{dataLayout = "HWCK"}>>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "zhigh.Conv2D"(%arg0, %arg1, %0) {act_func = "ACT_NONE", kernel_shape = [2, 2], padding_type = "SAME_PADDING", strides = [1, 1]} : (tensor<1x32x32x3xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<2x2x3x1xf16, #zhigh.layout<{dataLayout = "HWCK"}>>, none) -> tensor<*xf16>
    "func.return"(%1) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

