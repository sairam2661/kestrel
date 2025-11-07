"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x?xf32>) -> tensor<1x3x5x?xf32>, sym_name = "test_relu_nhwc"}> ({
  ^bb0(%arg0: tensor<1x3x5x?xf32>):
    %0 = "zhigh.Stick"(%arg0) {layout = "NHWC"} : (tensor<1x3x5x?xf32>) -> tensor<1x?x3x5xf16, #zhigh.layout<{dataLayout = "NHWC"}>>
    %1 = "zhigh.Relu"(%0) : (tensor<1x?x3x5xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1x?x3x5xf16, #zhigh.layout<{dataLayout = "NHWC"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<1x?x3x5xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<1x3x5x?xf32>
    "func.return"(%2) : (tensor<1x3x5x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

