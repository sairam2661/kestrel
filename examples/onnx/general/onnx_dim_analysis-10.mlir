"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x256xi64>, tensor<?x256xi64>) -> tensor<?x256xi64>, sym_name = "test_expand_from_concat_dims"}> ({
  ^bb0(%arg0: tensor<1x256xi64>, %arg1: tensor<?x256xi64>):
    %0 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg1) {axis = 0 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%1, %0) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Expand"(%arg0, %2) : (tensor<1x256xi64>, tensor<2xi64>) -> tensor<?x256xi64>
    "func.return"(%3) : (tensor<?x256xi64>) -> ()
  }) : () -> ()
}) : () -> ()

