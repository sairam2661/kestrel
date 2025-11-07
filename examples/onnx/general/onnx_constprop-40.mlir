"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>) -> tensor<4x2xi32>, sym_name = "test_matmul_lhs_zero"}> ({
  ^bb0(%arg0: tensor<3x2xi32>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<4x3xi32>} : () -> tensor<4x3xi32>
    %1 = "onnx.MatMul"(%0, %arg0) : (tensor<4x3xi32>, tensor<3x2xi32>) -> tensor<4x2xi32>
    "onnx.Return"(%1) : (tensor<4x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

