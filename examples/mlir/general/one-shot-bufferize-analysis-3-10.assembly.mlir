module {
  func.func @materialize_in_destination(%arg0: tensor<?xf32>, %arg1: index) -> tensor<?xf32> {
    %0 = tensor.empty(%arg1) : tensor<?xf32>
    %1 = bufferization.materialize_in_destination %0 in %0 : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    return %1 : tensor<?xf32>
  }
}

