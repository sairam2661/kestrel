"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x11x12x13xf32>) -> tensor<10x11x12x13xf32>, sym_name = "test_reshape_removal_1"}> ({
  ^bb0(%arg0: tensor<10x11x12x13xf32>):
    %0 = "onnx.Constant"() {value = dense<[10, 11, 12, 13]> : tensor<4xi64>} : () -> tensor<4xi64>
    %1 = "onnx.Reshape"(%arg0, %0) {allowzero = 0 : si64} : (tensor<10x11x12x13xf32>, tensor<4xi64>) -> tensor<10x11x12x13xf32>
    "onnx.Return"(%1) : (tensor<10x11x12x13xf32>) -> ()
  }) : () -> ()
}) : () -> ()

