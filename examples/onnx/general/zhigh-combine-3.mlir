"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x10xf32>) -> tensor<5x10xf32>, sym_name = "donot_replace_stick_and_unstick_by_layout_transform"}> ({
  ^bb0(%arg0: tensor<5x10xf32>):
    %0 = "zhigh.Stick"(%arg0) : (tensor<5x10xf32>) -> tensor<5x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %1 = "zhigh.Relu"(%0) : (tensor<5x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<5x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<5x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<5x10xf32>
    %3 = "zhigh.Stick"(%2) {layout = "2DS"} : (tensor<5x10xf32>) -> tensor<5x10xf16, #zhigh.layout<{dataLayout = "2DS"}>>
    %4 = "zhigh.Relu"(%3) : (tensor<5x10xf16, #zhigh.layout<{dataLayout = "2DS"}>>) -> tensor<5x10xf16, #zhigh.layout<{dataLayout = "2DS"}>>
    %5 = "zhigh.Unstick"(%4) {layout = "2DS"} : (tensor<5x10xf16, #zhigh.layout<{dataLayout = "2DS"}>>) -> tensor<5x10xf32>
    "func.return"(%5) : (tensor<5x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

