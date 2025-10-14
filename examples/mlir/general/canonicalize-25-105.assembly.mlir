module {
  func.func nested @fold_reciprocal() -> tensor<3x600x1200xf32> {
    %0 = "tosa.const"() <{values = dense<1.160000e+02> : tensor<f32>}> : () -> tensor<f32>
    %1 = tosa.cast %0 : (tensor<f32>) -> tensor<3x600x1200xf32>
    %2 = tosa.reciprocal %1 : (tensor<3x600x1200xf32>) -> tensor<3x600x1200xf32>
    return %2 : tensor<3x600x1200xf32>
  }
}

