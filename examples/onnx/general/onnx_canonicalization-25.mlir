"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x2x2xf32>) -> tensor<3x2x8xf32>, sym_name = "test_reshape_fusion_2"}> ({
  ^bb0(%arg0: tensor<3x4x2x2xf32>):
    %0 = "onnx.Constant"() {value = dense<[3, 2, 2, 2, 2]> : tensor<5xi64>} : () -> tensor<5xi64>
    %1 = "onnx.Constant"() {value = dense<[0, 0, -1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %2 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<3x4x2x2xf32>, tensor<5xi64>) -> tensor<3x2x2x2x2xf32>
    %3 = "onnx.Reshape"(%2, %1) {allowzero = 0 : si64} : (tensor<3x2x2x2x2xf32>, tensor<3xi64>) -> tensor<3x2x8xf32>
    "onnx.Return"(%3) : (tensor<3x2x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

