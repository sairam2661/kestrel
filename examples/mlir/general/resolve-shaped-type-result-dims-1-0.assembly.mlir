module {
  func.func @empty_tensor_static_dim() -> (index, index) {
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c6 = arith.constant 6 : index
    %0 = tensor.empty(%c6) : tensor<4x5x?xf32>
    %dim = tensor.dim %0, %c2 : tensor<4x5x?xf32>
    %dim_0 = tensor.dim %0, %c0 : tensor<4x5x?xf32>
    return %dim, %dim_0 : index, index
  }
}

