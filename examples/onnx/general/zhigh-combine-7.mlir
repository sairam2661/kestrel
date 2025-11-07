"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x104x104x128xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1x104x104x128xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, sym_name = "donot_replace_leakyrelu"}> ({
  ^bb0(%arg0: tensor<1x104x104x128xf16, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<1x104x104x128xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1x104x128x104xf32>
    %1 = "onnx.LeakyRelu"(%0) {alpha = -1.000000e-01 : f32} : (tensor<1x104x128x104xf32>) -> tensor<1x104x128x104xf32>
    %2 = "zhigh.Stick"(%1) {layout = "NHWC"} : (tensor<1x104x128x104xf32>) -> tensor<1x104x104x128xf16, #zhigh.layout<{dataLayout = "NHWC"}>>
    "func.return"(%2) : (tensor<1x104x104x128xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> ()
  }) : () -> ()
}) : () -> ()

