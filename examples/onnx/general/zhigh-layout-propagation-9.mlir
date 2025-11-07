"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x4x4x384xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, sym_name = "onnx_concat_layout_propagation_nhwc"}> ({
  ^bb0(%arg0: tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "NHWC"}>>, %arg1: tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "NHWC"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x192x4x4xf32>
    %1 = "zhigh.Unstick"(%arg1) : (tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x192x4x4xf32>
    %2 = "onnx.Concat"(%0, %1) {axis = 1 : si64} : (tensor<?x192x4x4xf32>, tensor<?x192x4x4xf32>) -> tensor<?x384x4x4xf32>
    %3 = "zhigh.Stick"(%2) {layout = "NHWC"} : (tensor<?x384x4x4xf32>) -> tensor<?x4x4x384xf16, #zhigh.layout<{dataLayout = "NHWC"}>>
    "func.return"(%3) : (tensor<?x4x4x384xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> ()
  }) : () -> ()
}) : () -> ()

