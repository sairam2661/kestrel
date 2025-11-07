"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256xi64>) -> tensor<1xi64>, sym_name = "test_pass_dims_through_slice"}> ({
  ^bb0(%arg0: tensor<?x256xi64>):
    %0 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %4 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %5 = "onnx.Constant"() {value = dense<0> : tensor<1xi64>} : () -> tensor<1xi64>
    %6 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %7 = "onnx.Slice"(%2, %3, %4, %5, %6) : (tensor<2xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<1xi64>
    "onnx.Return"(%7) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

