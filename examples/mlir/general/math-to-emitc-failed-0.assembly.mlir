module {
  func.func @unsupported_tensor_type(%arg0: tensor<4xf32>) -> tensor<4xf32> {
    %0 = math.absf %arg0 : tensor<4xf32>
    return %0 : tensor<4xf32>
  }
}

