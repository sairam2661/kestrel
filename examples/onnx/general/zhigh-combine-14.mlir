"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>, sym_name = "test_dlf16_to_f32"}> ({
  ^bb0(%arg0: tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>):
    %0 = "onnx.LayoutTransform"(%arg0) : (tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<1x3x5x?xf16>
    %1 = "zhigh.DLF16ToF32"(%0) : (tensor<1x3x5x?xf16>) -> tensor<1x3x5x?xf32>
    %2 = "zhigh.F32ToDLF16"(%1) : (tensor<1x3x5x?xf32>) -> tensor<1x3x5x?xf16>
    %3 = "onnx.LayoutTransform"(%2) {target_layout = "4D"} : (tensor<1x3x5x?xf16>) -> tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>
    "onnx.Return"(%3) : (tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

