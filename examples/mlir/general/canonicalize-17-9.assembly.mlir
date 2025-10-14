module {
  func.func @tensor.cast_chain_keep(%arg0: tensor<?x?xi32>) -> tensor<?x8xi32> {
    %cast = tensor.cast %arg0 : tensor<?x?xi32> to tensor<4x?xi32>
    %cast_0 = tensor.cast %cast : tensor<4x?xi32> to tensor<?x8xi32>
    return %cast_0 : tensor<?x8xi32>
  }
}

