"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?xi64>) -> tensor<2x1x1x?xf32>, sym_name = "test_replace_unsqueeze_by_expand"}> ({
  ^bb0(%arg0: tensor<2x?xi64>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<2x?xi64>) -> tensor<1xi64>
    %3 = "onnx.Concat"(%1, %2) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %4 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %5 = "onnx.Expand"(%4, %3) : (tensor<f32>, tensor<2xi64>) -> tensor<2x?xf32>
    %6 = "onnx.Unsqueeze"(%5, %0) : (tensor<2x?xf32>, tensor<1xi64>) -> tensor<2x1x?xf32>
    %7 = "onnx.Unsqueeze"(%6, %1) : (tensor<2x1x?xf32>, tensor<1xi64>) -> tensor<2x1x1x?xf32>
    "func.return"(%7) : (tensor<2x1x1x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

