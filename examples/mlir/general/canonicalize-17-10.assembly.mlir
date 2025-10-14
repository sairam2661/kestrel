module {
  func.func @tensor.cast_chain_invalid(%arg0: tensor<4x8xi32>) -> tensor<8x4xi32> {
    %cast = tensor.cast %arg0 : tensor<4x8xi32> to tensor<?x?xi32>
    %cast_0 = tensor.cast %cast : tensor<?x?xi32> to tensor<8x4xi32>
    return %cast_0 : tensor<8x4xi32>
  }
}

