"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x1024xf32>) -> tensor<1x128x16x64xf32>, sym_name = "test_reshape"}> ({
  ^bb0(%arg0: tensor<128x1024xf32>):
    %0 = "onnx.Constant"() {value = dense<[-1, 128, 16, 64]> : tensor<4xi64>} : () -> tensor<4xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<128x1024xf32>, tensor<4xi64>) -> tensor<1x128x16x64xf32>
    "func.return"(%1) : (tensor<1x128x16x64xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<12x128x1024xf32>) -> tensor<12x128x16x64xf32>, sym_name = "test_reshape_allowzero"}> ({
  ^bb0(%arg0: tensor<12x128x1024xf32>):
    %0 = "onnx.Constant"() {value = dense<[-1, 0, 16, 64]> : tensor<4xi64>} : () -> tensor<4xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<12x128x1024xf32>, tensor<4xi64>) -> tensor<12x128x16x64xf32>
    "func.return"(%1) : (tensor<12x128x16x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

