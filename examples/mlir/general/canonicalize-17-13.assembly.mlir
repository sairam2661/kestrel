module {
  func.func @infer_concat_return_type(%arg0: tensor<5x12xi32>, %arg1: tensor<?x12xi32>) -> tensor<?x?xi32> {
    %concat = tensor.concat dim(0) %arg0, %arg1 : (tensor<5x12xi32>, tensor<?x12xi32>) -> tensor<?x?xi32>
    return %concat : tensor<?x?xi32>
  }
}

