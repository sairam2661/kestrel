module {
  func.func @rank(%arg0: tensor<*xf32>) -> index {
    %rank = tensor.rank %arg0 : tensor<*xf32>
    return %rank : index
  }
}

