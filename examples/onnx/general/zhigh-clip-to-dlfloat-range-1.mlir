"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x4xf32>) -> tensor<3x4x5xf32>, sym_name = "should_clip_transpose"}> ({
  ^bb0(%arg0: tensor<3x5x4xf32>):
    %0 = "onnx.Transpose"(%arg0) {perm = [0, 2, 1]} : (tensor<3x5x4xf32>) -> tensor<3x4x5xf32>
    %1 = "zhigh.Stick"(%0) {layout = "3DS"} : (tensor<3x4x5xf32>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %2 = "zhigh.Softmax"(%1) {act_func = "ACT_NONE"} : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %3 = "zhigh.Unstick"(%2) : (tensor<3x4x5xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<3x4x5xf32>
    "func.return"(%3) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

