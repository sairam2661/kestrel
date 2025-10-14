module {
  func.func @fold_dim_of_tensor.cast(%arg0: tensor<4x?xf32>) -> (index, index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cast = tensor.cast %arg0 : tensor<4x?xf32> to tensor<?x?xf32>
    %dim = tensor.dim %cast, %c0 : tensor<?x?xf32>
    %dim_0 = tensor.dim %cast, %c1 : tensor<?x?xf32>
    return %dim, %dim_0 : index, index
  }
}

