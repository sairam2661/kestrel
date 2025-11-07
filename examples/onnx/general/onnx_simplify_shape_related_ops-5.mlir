"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256xi64>) -> tensor<4xi64>, sym_name = "test_pass_dims_through_concat"}> ({
  ^bb0(%arg0: tensor<?x256xi64>):
    %0 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Concat"(%2, %0) {axis = 0 : si64} : (tensor<2xi64>, tensor<1xi64>) -> tensor<3xi64>
    %4 = "onnx.Concat"(%3, %0) {axis = 0 : si64} : (tensor<3xi64>, tensor<1xi64>) -> tensor<4xi64>
    "onnx.Return"(%4) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()

