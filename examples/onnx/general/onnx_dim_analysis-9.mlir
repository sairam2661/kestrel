"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi64>) -> tensor<?x?xi64>, sym_name = "test_reshape_rank_2"}> ({
  ^bb0(%arg0: tensor<?x?xi64>):
    %0 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<?x?xi64>) -> tensor<1xi64>
    %2 = "onnx.Concat"(%1, %0) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Reshape"(%arg0, %2) {allowzero = 0 : si64} : (tensor<?x?xi64>, tensor<2xi64>) -> tensor<?x?xi64>
    "onnx.Return"(%3) : (tensor<?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

