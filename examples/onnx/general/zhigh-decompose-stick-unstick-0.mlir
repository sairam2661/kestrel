"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x?xf32>) -> tensor<1x3x5x?xf32>, sym_name = "test_relu"}> ({
  ^bb0(%arg0: tensor<1x3x5x?xf32>):
    %0 = "zhigh.Stick"(%arg0) {layout = "4D"} : (tensor<1x3x5x?xf32>) -> tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>
    %1 = "zhigh.Relu"(%0) : (tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<1x3x5x?xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> tensor<1x3x5x?xf32>
    "func.return"(%2) : (tensor<1x3x5x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

