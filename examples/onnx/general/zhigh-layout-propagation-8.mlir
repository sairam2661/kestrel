"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x56x56x256xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1x256x56x56xf16, #zhigh.layout<{dataLayout = "4D"}>>, sym_name = "relu_layout_propagate_nhwc"}> ({
  ^bb0(%arg0: tensor<1x56x56x256xf16, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<1x56x56x256xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1x256x56x56xf32>
    %1 = "zhigh.Stick"(%0) {layout = "4D"} : (tensor<1x256x56x56xf32>) -> tensor<1x256x56x56xf16, #zhigh.layout<{dataLayout = "4D"}>>
    %2 = "zhigh.Relu"(%1) : (tensor<1x256x56x56xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<1x256x56x56xf16, #zhigh.layout<{dataLayout = "4D"}>>
    "func.return"(%2) : (tensor<1x256x56x56xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

