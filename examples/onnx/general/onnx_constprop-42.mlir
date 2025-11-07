"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3xf16>) -> tensor<4x2xf16>, sym_name = "test_matmul_rhs_zero_f16"}> ({
  ^bb0(%arg0: tensor<4x3xf16>):
    %0 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<3x2xf16>} : () -> tensor<3x2xf16>
    %1 = "onnx.MatMul"(%arg0, %0) : (tensor<4x3xf16>, tensor<3x2xf16>) -> tensor<4x2xf16>
    "onnx.Return"(%1) : (tensor<4x2xf16>) -> ()
  }) : () -> ()
}) : () -> ()

