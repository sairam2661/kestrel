"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>, sym_name = "test_nhwc_layout"}> ({
  ^bb0(%arg0: tensor<?x?x?x?xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>
    %1 = "zhigh.Stick"(%0) {layout = "NHWC"} : (tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>
    %2 = "zhigh.Unstick"(%1) : (tensor<?x?x?x?xf16, #zhigh.layout<{dataLayout = "NHWC"}>>) -> tensor<?x?x?x?xf32>
    "onnx.Return"(%2) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

