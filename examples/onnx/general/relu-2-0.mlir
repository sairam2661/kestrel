"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<10x10xf32>, sym_name = "test_log"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<10x10xf32>} : () -> tensor<10x10xf32>
    %1 = "zhigh.Stick"(%0) {layout = "2D"} : (tensor<10x10xf32>) -> tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %2 = "zhigh.Relu"(%1) : (tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %3 = "zhigh.Unstick"(%2) : (tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<10x10xf32>
    "func.return"(%3) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

