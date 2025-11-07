"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x200xf32>) -> tensor<2xi64>, sym_name = "test_pass_dims_through_cast_2"}> ({
  ^bb0(%arg0: tensor<?x?x200xf32>):
    %0 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x?x200xf32>) -> tensor<1xi64>
    %2 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<?x?x200xf32>) -> tensor<1xi64>
    %3 = "onnx.Constant"() {value = dense<200> : tensor<1xi64>} : () -> tensor<1xi64>
    %4 = "onnx.Concat"(%1, %2, %3) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %5 = "onnx.Gather"(%4, %0) {axis = 0 : si64} : (tensor<3xi64>, tensor<2xi64>) -> tensor<2xi64>
    "onnx.Return"(%5) : (tensor<2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

