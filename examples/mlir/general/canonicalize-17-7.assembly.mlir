module {
  func.func @tensor.cast_chain_ok(%arg0: tensor<*xi32>) -> tensor<4x8xi32> {
    %cast = tensor.cast %arg0 : tensor<*xi32> to tensor<4x?xi32>
    %cast_0 = tensor.cast %cast : tensor<4x?xi32> to tensor<4x8xi32>
    return %cast_0 : tensor<4x8xi32>
  }
}

