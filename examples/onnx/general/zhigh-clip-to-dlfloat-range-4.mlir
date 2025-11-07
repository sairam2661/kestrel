"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x5xf16, #zhigh.layout<{dataLayout = "3D"}>>, tensor<3x2x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x4x5xf32>, sym_name = "donot_clip_stick_concat"}> ({
  ^bb0(%arg0: tensor<3x2x5xf16, #zhigh.layout<{dataLayout = "3D"}>>, %arg1: tensor<3x2x5xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<3x2x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x2x5xf32>
    %1 = "zhigh.Unstick"(%arg1) : (tensor<3x2x5xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x2x5xf32>
    %2 = "onnx.Concat"(%0, %1) {axis = 1 : si64} : (tensor<3x2x5xf32>, tensor<3x2x5xf32>) -> tensor<3x4x5xf32>
    %3 = "zhigh.Stick"(%2) {layout = "3DS"} : (tensor<3x4x5xf32>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %4 = "zhigh.Softmax"(%3) {act_func = "ACT_NONE"} : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %5 = "zhigh.Unstick"(%4) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf32>
    "func.return"(%5) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

