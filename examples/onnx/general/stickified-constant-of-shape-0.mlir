"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf16>) -> tensor<?x10xf16, #zhigh.layout<{dataLayout = "2D"}>>, sym_name = "test_stickified_constant_of_shape"}> ({
  ^bb0(%arg0: tensor<?x10xf16>):
    %0 = "onnx.Constant"() {value = dense<8.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x10xf16>) -> tensor<1xi64>
    %2 = "onnx.Constant"() {value = dense<10> : tensor<1xi64>} : () -> tensor<1xi64>
    %3 = "onnx.Concat"(%1, %2) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %4 = "zhigh.StickifiedConstantOfShape"(%3) {layout = "2D", value = 8.000000e+00 : f32} : (tensor<2xi64>) -> tensor<?x10xf16, #zhigh.layout<{dataLayout = "2D"}>>
    "func.return"(%4) : (tensor<?x10xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> ()
  }) : () -> ()
}) : () -> ()

