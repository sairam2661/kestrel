"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x10x20xf32>, tensor<20x1xf32>) -> tensor<15x10x1xf32>, sym_name = "test_reshape_should_not_remove"}> ({
  ^bb0(%arg0: tensor<3x5x10x20xf32>, %arg1: tensor<20x1xf32>):
    %0 = "onnx.Constant"() {value = dense<[150, 20]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Constant"() {value = dense<[15, 10, 1]> : tensor<3xi64>} : () -> tensor<3xi64>
    %2 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<3x5x10x20xf32>, tensor<2xi64>) -> tensor<150x20xf32>
    %3 = "onnx.MatMul"(%2, %arg1) : (tensor<150x20xf32>, tensor<20x1xf32>) -> tensor<150x1xf32>
    %4 = "onnx.Reshape"(%3, %1) {allowzero = 0 : si64} : (tensor<150x1xf32>, tensor<3xi64>) -> tensor<15x10x1xf32>
    "onnx.Return"(%4) : (tensor<15x10x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

