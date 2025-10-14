module {
  func.func @empty(%arg0: index) -> tensor<5x?x6xf32> {
    %0 = tensor.empty(%arg0) : tensor<5x?x6xf32>
    return %0 : tensor<5x?x6xf32>
  }
}

