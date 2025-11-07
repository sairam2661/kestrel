"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xf32>, tensor<?xi64>) -> tensor<2x4xf32>, sym_name = "test_replace_sub_zero_expand"}> ({
  ^bb0(%arg0: tensor<2x4xf32>, %arg1: tensor<?xi64>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg1) {axis = 0 : si64} : (tensor<?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "onnx.Expand"(%3, %2) : (tensor<f32>, tensor<2xi64>) -> tensor<1x?xf32>
    %5 = "onnx.Sub"(%arg0, %4) : (tensor<2x4xf32>, tensor<1x?xf32>) -> tensor<2x4xf32>
    "func.return"(%5) : (tensor<2x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

