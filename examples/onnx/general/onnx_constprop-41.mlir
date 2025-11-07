"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xi64>) -> tensor<4x2xi64>, sym_name = "test_matmul_rhs_zero"}> ({
  ^bb0(%arg0: tensor<4x3xi64>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<3x2xi64>} : () -> tensor<3x2xi64>
    %1 = "onnx.MatMul"(%arg0, %0) : (tensor<4x3xi64>, tensor<3x2xi64>) -> tensor<4x2xi64>
    "onnx.Return"(%1) : (tensor<4x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

