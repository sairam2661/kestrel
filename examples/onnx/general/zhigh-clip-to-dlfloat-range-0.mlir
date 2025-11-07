"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>) -> tensor<3x4x5xf32>, sym_name = "should_clip_stick"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>):
    %0 = "zhigh.Stick"(%arg0) {layout = "3DS"} : (tensor<3x4x5xf32>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %1 = "zhigh.Softmax"(%0) {act_func = "ACT_NONE"} : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf32>
    "func.return"(%2) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

