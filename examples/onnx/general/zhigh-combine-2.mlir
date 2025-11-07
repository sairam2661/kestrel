"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x10x10xf32>) -> tensor<5x10x10xf32>, sym_name = "replace_stick_and_unstick_by_layout_transform"}> ({
  ^bb0(%arg0: tensor<5x10x10xf32>):
    %0 = "zhigh.Stick"(%arg0) : (tensor<5x10x10xf32>) -> tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3D"}>>
    %1 = "zhigh.Relu"(%0) : (tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3D"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<5x10x10xf32>
    %3 = "zhigh.Stick"(%2) {layout = "3DS"} : (tensor<5x10x10xf32>) -> tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %4 = "zhigh.Relu"(%3) : (tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %5 = "zhigh.Unstick"(%4) {layout = "3DS"} : (tensor<5x10x10xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<5x10x10xf32>
    "func.return"(%5) : (tensor<5x10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

