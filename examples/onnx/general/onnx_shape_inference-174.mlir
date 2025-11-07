"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi64>, tensor<1xi64>, tensor<f32>) -> tensor<?x1x?xf32>, sym_name = "test_expand_with_concat"}> ({
  ^bb0(%arg0: tensor<1xi64>, %arg1: tensor<1xi64>, %arg2: tensor<f32>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Concat"(%arg0, %0, %arg1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %2 = "onnx.Expand"(%arg2, %1) : (tensor<f32>, tensor<3xi64>) -> tensor<?x1x?xf32>
    "func.return"(%2) : (tensor<?x1x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

