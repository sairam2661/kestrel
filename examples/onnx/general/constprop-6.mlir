"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x1x2x3xf16, #zhigh.layout<{dataLayout = "4D"}>>, sym_name = "remove_stick_4d"}> ({
    %0 = "onnx.Constant"() {value = dense<[[[[0.000000e+00, 1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00]]]]> : tensor<1x1x2x3xf32>} : () -> tensor<1x1x2x3xf32>
    %1 = "zhigh.Stick"(%0) {layout = "4D"} : (tensor<1x1x2x3xf32>) -> tensor<1x1x2x3xf16, #zhigh.layout<{dataLayout = "4D"}>>
    "func.return"(%1) : (tensor<1x1x2x3xf16, #zhigh.layout<{dataLayout = "4D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

