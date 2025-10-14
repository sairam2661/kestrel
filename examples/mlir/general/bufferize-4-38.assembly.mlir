module {
  func.func @tensor.concat_dynamic_nonconcat_dim(%arg0: tensor<?x?xf32>, %arg1: tensor<?x?xf32>) -> tensor<?x?xf32> {
    %concat = tensor.concat dim(1) %arg0, %arg1 : (tensor<?x?xf32>, tensor<?x?xf32>) -> tensor<?x?xf32>
    return %concat : tensor<?x?xf32>
  }
}

