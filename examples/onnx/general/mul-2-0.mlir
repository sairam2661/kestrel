"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<10x10xf32>, sym_name = "test_mul"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<10x10xf32>} : () -> tensor<10x10xf32>
    %1 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<10x10xf32>} : () -> tensor<10x10xf32>
    %2 = "zhigh.Stick"(%0) {layout = "2D"} : (tensor<10x10xf32>) -> tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %3 = "zhigh.Stick"(%1) {layout = "2D"} : (tensor<10x10xf32>) -> tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %4 = "zhigh.Mul"(%2, %3) : (tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>, tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %5 = "zhigh.Unstick"(%4) : (tensor<10x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<10x10xf32>
    "func.return"(%5) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

