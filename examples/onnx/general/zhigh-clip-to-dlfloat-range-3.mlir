"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x4xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x4x5xf32>, sym_name = "donot_clip_stick_transpose"}> ({
  ^bb0(%arg0: tensor<3x5x4xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<3x5x4xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<3x5x4xf32>
    %1 = "onnx.Transpose"(%0) {perm = [0, 2, 1]} : (tensor<3x5x4xf32>) -> tensor<3x4x5xf32>
    %2 = "zhigh.Stick"(%1) {layout = "3DS"} : (tensor<3x4x5xf32>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %3 = "zhigh.Softmax"(%2) {act_func = "ACT_NONE"} : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %4 = "zhigh.Unstick"(%3) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf32>
    "func.return"(%4) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

