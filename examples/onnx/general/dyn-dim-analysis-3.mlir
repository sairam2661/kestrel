"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>, sym_name = "test_stick_matmul_unstick"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %1 = "zhigh.Stick"(%0) {layout = "3DS"} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %2 = "onnx.Transpose"(%arg0) {perm = [0, 2, 1]} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %3 = "zhigh.Stick"(%2) {layout = "3DS"} : (tensor<?x?x?xf32>) -> tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %4 = "onnx.NoValue"() {value} : () -> none
    %5 = "zhigh.MatMul"(%1, %3, %4) : (tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>, tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>, none) -> tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    %6 = "zhigh.Unstick"(%5) : (tensor<?x?x?xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> tensor<?x?x?xf32>
    "onnx.Return"(%6) : (tensor<?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

