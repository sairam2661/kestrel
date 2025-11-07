"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x768xf32>, tensor<?x?x768xf32>) -> tensor<?x12x?x?xf32>, sym_name = "test_div_in_attention"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>, %arg1: tensor<?x?x768xf32>):
    %0 = "onnx.Constant"() {value = dense<1.280000e+02> : tensor<768xf32>} : () -> tensor<768xf32>
    %1 = "onnx.Constant"() {value = dense<64> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Constant"() {value = dense<12> : tensor<1xi64>} : () -> tensor<1xi64>
    %3 = "onnx.Constant"() {value = dense<1.280000e+02> : tensor<768x768xf32>} : () -> tensor<768x768xf32>
    %4 = "onnx.MatMul"(%arg1, %3) : (tensor<?x?x768xf32>, tensor<768x768xf32>) -> tensor<?x?x768xf32>
    %5 = "onnx.Add"(%4, %0) : (tensor<?x?x768xf32>, tensor<768xf32>) -> tensor<?x?x768xf32>
    %6 = "onnx.Dim"(%5) {axis = 0 : si64} : (tensor<?x?x768xf32>) -> tensor<1xi64>
    %7 = "onnx.Dim"(%5) {axis = 1 : si64} : (tensor<?x?x768xf32>) -> tensor<1xi64>
    %8 = "onnx.Concat"(%6, %7, %2, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %9 = "onnx.Reshape"(%5, %8) {allowzero = 0 : si64} : (tensor<?x?x768xf32>, tensor<4xi64>) -> tensor<?x?x12x64xf32>
    %10 = "onnx.Transpose"(%9) {perm = [0, 2, 1, 3]} : (tensor<?x?x12x64xf32>) -> tensor<?x12x?x64xf32>
    %11 = "onnx.MatMul"(%arg0, %3) : (tensor<?x?x768xf32>, tensor<768x768xf32>) -> tensor<?x?x768xf32>
    %12 = "onnx.Add"(%11, %0) : (tensor<?x?x768xf32>, tensor<768xf32>) -> tensor<?x?x768xf32>
    %13 = "onnx.Dim"(%12) {axis = 0 : si64} : (tensor<?x?x768xf32>) -> tensor<1xi64>
    %14 = "onnx.Dim"(%12) {axis = 1 : si64} : (tensor<?x?x768xf32>) -> tensor<1xi64>
    %15 = "onnx.Concat"(%13, %14, %2, %1) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %16 = "onnx.Reshape"(%12, %15) {allowzero = 0 : si64} : (tensor<?x?x768xf32>, tensor<4xi64>) -> tensor<?x?x12x64xf32>
    %17 = "onnx.Transpose"(%16) {perm = [0, 2, 3, 1]} : (tensor<?x?x12x64xf32>) -> tensor<?x12x64x?xf32>
    %18 = "onnx.MatMul"(%10, %17) : (tensor<?x12x?x64xf32>, tensor<?x12x64x?xf32>) -> tensor<?x12x?x?xf32>
    %19 = "onnx.Constant"() {value = dense<8.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %20 = "onnx.Div"(%18, %19) : (tensor<?x12x?x?xf32>, tensor<f32>) -> tensor<?x12x?x?xf32>
    "onnx.Return"(%20) : (tensor<?x12x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

