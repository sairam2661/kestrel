"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi64>) -> tensor<2x?xf32>, sym_name = "test_replace_add_by_expand_1"}> ({
  ^bb0(%arg0: tensor<?xi64>):
    %0 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %5 = "onnx.Expand"(%4, %2) : (tensor<f32>, tensor<2xi64>) -> tensor<2x?xf32>
    %6 = "onnx.Add"(%3, %5) : (tensor<f32>, tensor<2x?xf32>) -> tensor<2x?xf32>
    "func.return"(%6) : (tensor<2x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

