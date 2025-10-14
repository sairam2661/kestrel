module {
  func.func @tensor.splat(%arg0: f32) -> tensor<10x2x4xf32> {
    %splat = tensor.splat %arg0 : tensor<10x2x4xf32>
    return %splat : tensor<10x2x4xf32>
  }
}

