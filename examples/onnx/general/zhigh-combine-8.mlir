"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x256x1xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<4x256x1xf16, #zhigh.layout<{dataLayout = "3D"}>>, sym_name = "replace_reciprocal_sqrt"}> ({
  ^bb0(%arg0: tensor<4x256x1xf16, #zhigh.layout<{dataLayout = "3D"}>>):
    %0 = "zhigh.Unstick"(%arg0) : (tensor<4x256x1xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<4x256x1xf32>
    %1 = "onnx.Sqrt"(%0) : (tensor<4x256x1xf32>) -> tensor<4x256x1xf32>
    %2 = "onnx.Reciprocal"(%1) : (tensor<4x256x1xf32>) -> tensor<4x256x1xf32>
    %3 = "zhigh.Stick"(%2) {layout = "3D"} : (tensor<4x256x1xf32>) -> tensor<4x256x1xf16, #zhigh.layout<{dataLayout = "3D"}>>
    "func.return"(%3) : (tensor<4x256x1xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

