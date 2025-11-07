"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x3x?xf32>) -> tensor<?x3x?xf32>, sym_name = "test_stick_binary_unstick"}> ({
  ^bb0(%arg0: tensor<?x3x?xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<?x3x?xf32>) -> tensor<?x3x?xf32>
    %1 = "zhigh.Stick"(%0) {layout = "3D"} : (tensor<?x3x?xf32>) -> tensor<?x3x?xf16, #zhigh.layout<{dataLayout = "3D"}>>
    %2 = "zhigh.Add"(%1, %1) : (tensor<?x3x?xf16, #zhigh.layout<{dataLayout = "3D"}>>, tensor<?x3x?xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<?x3x?xf16, #zhigh.layout<{dataLayout = "3D"}>>
    %3 = "zhigh.Unstick"(%2) : (tensor<?x3x?xf16, #zhigh.layout<{dataLayout = "3D"}>>) -> tensor<?x3x?xf32>
    "onnx.Return"(%3) : (tensor<?x3x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

