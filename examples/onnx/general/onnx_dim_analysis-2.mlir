"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256xi64>, tensor<?x256xi64>) -> (tensor<?x1x256x256xf32>, tensor<?x1x256x256xf32>, tensor<?x1x256x256xf32>), sym_name = "test_dim_analysis_with_bert"}> ({
  ^bb0(%arg0: tensor<?x256xi64>, %arg1: tensor<?x256xi64>):
    %0 = "onnx.Dim"(%arg1) {axis = 0 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    %1 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %2 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %3 = "onnx.Concat"(%0, %1, %2) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %4 = "onnx.ConstantOfShape"(%3) {value = dense<1.000000e+00> : tensor<1xf32>} : (tensor<3xi64>) -> tensor<?x256x1xf32>
    %5 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %6 = "onnx.Constant"() {value = dense<256> : tensor<1xi64>} : () -> tensor<1xi64>
    %7 = "onnx.Concat"(%0, %5, %6) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<3xi64>
    %8 = "onnx.Reshape"(%arg0, %7) {allowzero = 0 : si64} : (tensor<?x256xi64>, tensor<3xi64>) -> tensor<?x1x256xi64>
    %9 = "onnx.Cast"(%8) {saturate = 1 : si64, to = f32} : (tensor<?x1x256xi64>) -> tensor<?x1x256xf32>
    %10 = "onnx.Mul"(%4, %9) : (tensor<?x256x1xf32>, tensor<?x1x256xf32>) -> tensor<?x256x256xf32>
    %11 = "onnx.Constant"() {value = dense<[-1, 1, 256, 256]> : tensor<4xi64>} : () -> tensor<4xi64>
    %12 = "onnx.Reshape"(%10, %11) {allowzero = 0 : si64} : (tensor<?x256x256xf32>, tensor<4xi64>) -> tensor<?x1x256x256xf32>
    %13 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %14 = "onnx.Sub"(%13, %12) : (tensor<f32>, tensor<?x1x256x256xf32>) -> tensor<?x1x256x256xf32>
    %15 = "onnx.Constant"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %16 = "onnx.Mul"(%14, %15) : (tensor<?x1x256x256xf32>, tensor<f32>) -> tensor<?x1x256x256xf32>
    %17 = "onnx.Constant"() {value = dense<[-1, 1, 256, 256]> : tensor<4xi64>} : () -> tensor<4xi64>
    %18 = "onnx.Reshape"(%10, %17) {allowzero = 0 : si64} : (tensor<?x256x256xf32>, tensor<4xi64>) -> tensor<?x1x256x256xf32>
    %19 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %20 = "onnx.Sub"(%19, %18) : (tensor<f32>, tensor<?x1x256x256xf32>) -> tensor<?x1x256x256xf32>
    %21 = "onnx.Constant"() {value = dense<-1.000000e+04> : tensor<f32>} : () -> tensor<f32>
    %22 = "onnx.Mul"(%20, %21) : (tensor<?x1x256x256xf32>, tensor<f32>) -> tensor<?x1x256x256xf32>
    "onnx.Return"(%22, %20, %16) : (tensor<?x1x256x256xf32>, tensor<?x1x256x256xf32>, tensor<?x1x256x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

