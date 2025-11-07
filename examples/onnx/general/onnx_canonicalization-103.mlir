"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi64>) -> tensor<2x?xf32>, sym_name = "test_not_replace_sub_by_expand_two_expands"}> ({
  ^bb0(%arg0: tensor<?xi64>):
    %0 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<5.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "onnx.Constant"() {value = dense<6.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %5 = "onnx.Expand"(%3, %2) : (tensor<f32>, tensor<2xi64>) -> tensor<2x?xf32>
    %6 = "onnx.Expand"(%4, %2) : (tensor<f32>, tensor<2xi64>) -> tensor<2x?xf32>
    %7 = "onnx.Sub"(%5, %6) : (tensor<2x?xf32>, tensor<2x?xf32>) -> tensor<2x?xf32>
    "func.return"(%7) : (tensor<2x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

