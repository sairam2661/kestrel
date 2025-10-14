module {
  func.func @empty_tensor_dynamic_dim(%arg0: index) -> index {
    %c2 = arith.constant 2 : index
    %0 = tensor.empty(%arg0) : tensor<4x5x?xf32>
    %dim = tensor.dim %0, %c2 : tensor<4x5x?xf32>
    return %dim : index
  }
}

