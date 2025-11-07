"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256xi64>) -> tensor<2xf32>, sym_name = "test_pass_dims_through_cast"}> ({
  ^bb0(%arg0: tensor<?x256xi64>):
    %0 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>) -> tensor<2xi64>
    %3 = "onnx.Cast"(%2) {saturate = 1 : si64, to = f32} : (tensor<2xi64>) -> tensor<2xf32>
    "onnx.Return"(%3) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

