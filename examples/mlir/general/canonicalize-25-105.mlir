"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x600x1200xf32>, sym_name = "fold_reciprocal", sym_visibility = "nested"}> ({
    %0 = "tosa.const"() <{values = dense<1.160000e+02> : tensor<f32>}> : () -> tensor<f32>
    %1 = "tosa.cast"(%0) : (tensor<f32>) -> tensor<3x600x1200xf32>
    %2 = "tosa.reciprocal"(%1) : (tensor<3x600x1200xf32>) -> tensor<3x600x1200xf32>
    "func.return"(%2) : (tensor<3x600x1200xf32>) -> ()
  }) : () -> ()
}) : () -> ()

