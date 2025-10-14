module {
  func.func @scatter_static(%arg0: tensor<3x8x5xi32>, %arg1: tensor<3x6xi32>, %arg2: tensor<3x6x5xi32>) {
    %0 = tosa.scatter %arg0, %arg1, %arg2 : (tensor<3x8x5xi32>, tensor<3x6xi32>, tensor<3x6x5xi32>) -> tensor<?x?x?xi32>
    return
  }
}

