"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?xi64>) -> tensor<1x1x1x?xf32>, sym_name = "test_correct_dimgroup_axis_for_onnx_dim"}> ({
  ^bb0(%arg0: tensor<1x?xi64>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<1x?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %0, %0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %3 = "onnx.ConstantOfShape"(%2) {value = dense<0.000000e+00> : tensor<1xf32>} : (tensor<4xi64>) -> tensor<1x1x1x?xf32>
    "func.return"(%3) : (tensor<1x1x1x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

