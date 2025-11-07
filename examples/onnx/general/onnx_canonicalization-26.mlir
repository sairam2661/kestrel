"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x2x2xf32>) -> tensor<?x2x?xf32>, sym_name = "test_reshape_fusion3"}> ({
  ^bb0(%arg0: tensor<?x4x2x2xf32>):
    %0 = "onnx.Constant"() {value = dense<2> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<[0, 0, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %2 = "onnx.Dim"(%arg0) {axis = 0 : si64} : (tensor<?x4x2x2xf32>) -> tensor<1xi64>
    %3 = "onnx.Concat"(%2, %0, %0, %0, %0) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<5xi64>
    %4 = "onnx.Reshape"(%arg0, %3) {allowzero = 0 : si64} : (tensor<?x4x2x2xf32>, tensor<5xi64>) -> tensor<?x2x2x2x2xf32>
    %5 = "onnx.Reshape"(%4, %1) {allowzero = 0 : si64} : (tensor<?x2x2x2x2xf32>, tensor<3xi64>) -> tensor<?x2x?xf32>
    "onnx.Return"(%5) : (tensor<?x2x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

