"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x5x10x20xf32>, tensor<1xf32>) -> tensor<150x20xf32>, sym_name = "test_reshape_propagate_through_elementwise_ops"}> ({
  ^bb0(%arg0: tensor<3x5x10x20xf32>, %arg1: tensor<1xf32>):
    %0 = "onnx.Constant"() {value = dense<[150, 20]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<3x5x10x20xf32>, tensor<2xi64>) -> tensor<150x20xf32>
    %2 = "onnx.Mul"(%1, %arg1) : (tensor<150x20xf32>, tensor<1xf32>) -> tensor<150x20xf32>
    "onnx.Return"(%2) : (tensor<150x20xf32>) -> ()
  }) : () -> ()
}) : () -> ()

