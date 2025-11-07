"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x4x5xf32>, sym_name = "donot_clip_stick"}> ({
  ^bb0(%arg0: tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x4x5xf32>
    %1 = "zhigh.Stick"(%0) {layout = "3DS"} : (tensor<3x4x5xf32>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %2 = "zhigh.Softmax"(%1) {act_func = "ACT_NONE"} : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %3 = "zhigh.Unstick"(%2) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf32>
    "func.return"(%3) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

