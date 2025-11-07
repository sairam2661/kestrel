"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>) -> tensor<*xf32>, sym_name = "test_reshape_to_identity"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>):
    %0 = "onnx.Constant"() {value = dense<-1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %2 = "onnx.Dim"(%arg0) {axis = 2 : si64} : (tensor<?x?x?xf32>) -> tensor<1xi64>
    %3 = "onnx.Concat"(%0, %1, %2) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %4 = "onnx.Reshape"(%arg0, %3) {allowzero = 0 : si64} : (tensor<?x?x?xf32>, tensor<3xi64>) -> tensor<*xf32>
    "func.return"(%4) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

