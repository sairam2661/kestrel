"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<6xf16, #zhigh.layout<{dataLayout = "1D"}>>, sym_name = "remove_stick_1d"}> ({
    %0 = "onnx.Constant"() {value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00]> : tensor<6xf32>} : () -> tensor<6xf32>
    %1 = "zhigh.Stick"(%0) {layout = "1D"} : (tensor<6xf32>) -> tensor<6xf16, #zhigh.layout<{dataLayout = "1D"}>>
    "func.return"(%1) : (tensor<6xf16, #zhigh.layout<{dataLayout = "1D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

