"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf16>) -> tensor<3x4x5xf16>, sym_name = "expand_pow_into_mul_f16"}> ({
  ^bb0(%arg0: tensor<3x4x5xf16>):
    %0 = "onnx.Constant"() {value = dense<5.000000e+00> : tensor<f16>} : () -> tensor<f16>
    %1 = "onnx.Pow"(%arg0, %0) : (tensor<3x4x5xf16>, tensor<f16>) -> tensor<3x4x5xf16>
    "onnx.Return"(%1) : (tensor<3x4x5xf16>) -> ()
  }) : () -> ()
}) : () -> ()

