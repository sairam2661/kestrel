module {
  func.func @scatter_minimum_static(%arg0: tensor<?x4x?xi32>, %arg1: tensor<3x?xi32>, %arg2: tensor<?x?x5xi32>) {
    %0 = tosa.scatter %arg0, %arg1, %arg2 : (tensor<?x4x?xi32>, tensor<3x?xi32>, tensor<?x?x5xi32>) -> tensor<?x?x?xi32>
    return
  }
}

