"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>) -> tensor<3x4x5xf32>, sym_name = "expand_pow_into_mul13"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>):
    %0 = "onnx.Constant"() {value = dense<1.300000e+01> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Pow"(%arg0, %0) : (tensor<3x4x5xf32>, tensor<f32>) -> tensor<3x4x5xf32>
    "onnx.Return"(%1) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

