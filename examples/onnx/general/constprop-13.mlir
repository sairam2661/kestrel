"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x2x3xf16, #zhigh.layout<{dataLayout = "FICO"}>>, sym_name = "remove_stick_fico_3d"}> ({
    %0 = "onnx.Constant"() {value = dense<[[[0.000000e+00, 1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00]]]> : tensor<1x2x3xf32>} : () -> tensor<1x2x3xf32>
    %1 = "onnx.Constant"() {value = dense<[[[0.000000e+00, 1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00]]]> : tensor<1x2x3xf32>} : () -> tensor<1x2x3xf32>
    %2 = "onnx.Constant"() {value = dense<[[[0.000000e+00, 1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00]]]> : tensor<1x2x3xf32>} : () -> tensor<1x2x3xf32>
    %3 = "onnx.Constant"() {value = dense<[[[0.000000e+00, 1.000000e+00, 2.000000e+00], [3.000000e+00, 4.000000e+00, 5.000000e+00]]]> : tensor<1x2x3xf32>} : () -> tensor<1x2x3xf32>
    %4 = "zhigh.StickForLSTM"(%0, %1, %2, %3) : (tensor<1x2x3xf32>, tensor<1x2x3xf32>, tensor<1x2x3xf32>, tensor<1x2x3xf32>) -> tensor<1x2x3xf16, #zhigh.layout<{dataLayout = "FICO"}>>
    "func.return"(%4) : (tensor<1x2x3xf16, #zhigh.layout<{dataLayout = "FICO"}>>) -> ()
  }) : () -> ()
}) : () -> ()

