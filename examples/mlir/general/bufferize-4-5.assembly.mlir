module {
  func.func @tensor.empty() -> tensor<5xf32> {
    %0 = tensor.empty() : tensor<5xf32>
    return %0 : tensor<5xf32>
  }
}

