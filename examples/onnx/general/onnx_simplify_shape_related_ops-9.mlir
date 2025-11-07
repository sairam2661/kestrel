"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256xi64>, tensor<?x256xi64>) -> tensor<?x?x?xi64>, sym_name = "test_update_constantofshape_output_shape"}> ({
  ^bb0(%arg0: tensor<?x256xi64>, %arg1: tensor<?x256xi64>):
    %0 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %3 = "onnx.Concat"(%0, %1, %2) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %4 = "onnx.ConstantOfShape"(%3) {value = dense<1> : tensor<1xi64>} : (tensor<3xi64>) -> tensor<?x?x?xi64>
    "onnx.Return"(%4) : (tensor<?x?x?xi64>) -> ()
  }) : () -> ()
}) : () -> ()

