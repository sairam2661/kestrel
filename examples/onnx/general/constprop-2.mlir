"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x3xf32>, sym_name = "remove_stick_2d"}> ({
    %0 = "onnx.Constant"() {value = dense<[[0.000000e+00, 1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00]]> : tensor<2x3xf32>} : () -> tensor<2x3xf32>
    %1 = "zhigh.Stick"(%0) {layout = "2D"} : (tensor<2x3xf32>) -> tensor<2x3xf16, #zhigh.layout<{dataLayout = "2D"}>>
    %2 = "zhigh.Unstick"(%1) {layout = "2D"} : (tensor<2x3xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<2x3xf32>
    "func.return"(%2) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

