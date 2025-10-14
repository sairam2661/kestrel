module {
  func.func @exp(%arg0: tensor<f32>) -> tensor<f32> {
    %0 = math.exp %arg0 : tensor<f32>
    return %0 : tensor<f32>
  }
}

