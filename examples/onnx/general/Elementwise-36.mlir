"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>, tensor<3x4x5xf32>) -> tensor<3x4x5xf32>, sym_name = "test_pow", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>, %arg1: tensor<3x4x5xf32>):
    %0 = "onnx.Pow"(%arg0, %arg1) : (tensor<3x4x5xf32>, tensor<3x4x5xf32>) -> tensor<3x4x5xf32>
    "func.return"(%0) : (tensor<3x4x5xf32>) -> ()
  }) : () -> ()
}) : () -> ()

