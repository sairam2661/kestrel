"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "test_mul_constant_5"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>, %arg2: tensor<3xi32>):
    %0 = "onnx.Constant"() {value = dense<[0, 1, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "onnx.Constant"() {value = dense<[10, 11, 12]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2 = "onnx.Mul"(%0, %arg0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %3 = "onnx.Mul"(%2, %arg1) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %4 = "onnx.Mul"(%1, %arg2) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %5 = "onnx.Mul"(%3, %4) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "onnx.Return"(%5) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

