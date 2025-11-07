"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>) -> tensor<3xi32>, sym_name = "test_mul_constant_3"}> ({
  ^bb0(%arg0: tensor<3xi32>):
    %0 = "onnx.Constant"() {value = dense<[0, 1, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "onnx.Constant"() {value = dense<[10, 11, 12]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2 = "onnx.Mul"(%0, %arg0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %3 = "onnx.Mul"(%1, %2) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "onnx.Return"(%3) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

