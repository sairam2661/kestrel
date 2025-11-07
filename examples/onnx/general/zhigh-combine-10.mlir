"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1024x768xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<48x256x64xf16, #zhigh.layout<{dataLayout = "3DS"}>>, sym_name = "reshape_transpose_reshape_2d_to_3ds"}> ({
  ^bb0(%arg0: tensor<1024x768xf16, #zhigh.layout<{dataLayout = "2D"}>>):
    %0 = "onnx.Constant"() {value = dense<[4, 256, 12, 64]> : tensor<4xi64>} : () -> tensor<4xi64>
    %1 = "onnx.Constant"() {value = dense<[48, 256, 64]> : tensor<3xi64>} : () -> tensor<3xi64>
    %2 = "zhigh.Unstick"(%arg0) {layout = "2D"} : (tensor<1024x768xf16, #zhigh.layout<{dataLayout = "2D"}>>) -> tensor<1024x768xf32>
    %3 = "onnx.Reshape"(%2, %0) {allowzero = 0 : si64} : (tensor<1024x768xf32>, tensor<4xi64>) -> tensor<4x256x12x64xf32>
    %4 = "onnx.Transpose"(%3) {perm = [0, 2, 1, 3]} : (tensor<4x256x12x64xf32>) -> tensor<4x12x256x64xf32>
    %5 = "onnx.Reshape"(%4, %1) {allowzero = 0 : si64} : (tensor<4x12x256x64xf32>, tensor<3xi64>) -> tensor<48x256x64xf32>
    %6 = "zhigh.Stick"(%5) {layout = "3DS"} : (tensor<48x256x64xf32>) -> tensor<48x256x64xf16, #zhigh.layout<{dataLayout = "3DS"}>>
    "func.return"(%6) : (tensor<48x256x64xf16, #zhigh.layout<{dataLayout = "3DS"}>>) -> ()
  }) : () -> ()
}) : () -> ()

