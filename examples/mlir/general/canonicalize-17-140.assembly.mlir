module {
  func.func @fold_empty_tensor_with_cast(%arg0: index) -> tensor<1x12xf32> {
    %0 = tensor.empty(%arg0) : tensor<?x12xf32>
    %cast = tensor.cast %0 : tensor<?x12xf32> to tensor<1x12xf32>
    return %cast : tensor<1x12xf32>
  }
}

