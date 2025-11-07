"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "4D"}>>, tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x4x4x384xf16, #zhigh.layout<{dataLayout = "4D"}>>, sym_name = "onnx_concat_layout_propagation_4d"}> ({
  ^bb0(%arg0: tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "4D"}>>, %arg1: tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "4D"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x4x4x192xf32>
    %1 = "zhigh.Unstick"(%arg1) : (tensor<?x4x4x192xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<?x4x4x192xf32>
    %2 = "onnx.Concat"(%0, %1) {axis = 3 : si64} : (tensor<?x4x4x192xf32>, tensor<?x4x4x192xf32>) -> tensor<?x4x4x384xf32>
    %3 = "zhigh.Stick"(%2) {layout = "4D"} : (tensor<?x4x4x384xf32>) -> tensor<?x4x4x384xf16, #zhigh.layout<{dataLayout = "4D"}>>
    "func.return"(%3) : (tensor<?x4x4x384xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

