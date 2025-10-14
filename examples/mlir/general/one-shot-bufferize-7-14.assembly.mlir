module {
  func.func @materialize_in_func_bbarg(%arg0: tensor<?xf32>, %arg1: tensor<?xf32>) -> tensor<?xf32> {
    %0 = bufferization.materialize_in_destination %arg0 in %arg1 : (tensor<?xf32>, tensor<?xf32>) -> tensor<?xf32>
    return %0 : tensor<?xf32>
  }
}

