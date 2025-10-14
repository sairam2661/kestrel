module {
  func.func @tensor.cast_chain_regain(%arg0: tensor<4xi32>) -> tensor<4xi32> {
    %cast = tensor.cast %arg0 : tensor<4xi32> to tensor<?xi32>
    %cast_0 = tensor.cast %cast : tensor<?xi32> to tensor<4xi32>
    return %cast_0 : tensor<4xi32>
  }
}

