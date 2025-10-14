module {
  func.func @rank(%arg0: tensor<4x4x?xf32>) {
    %rank = tensor.rank %arg0 : tensor<4x4x?xf32>
    %rank_0 = tensor.rank %arg0 : tensor<4x4x?xf32>
    return
  }
}

