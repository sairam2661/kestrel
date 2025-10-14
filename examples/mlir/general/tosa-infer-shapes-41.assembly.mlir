module {
  func.func @scatter_static_values(%arg0: tensor<3x4x5xi32>, %arg1: tensor<?x?xi32>, %arg2: tensor<?x?x?xi32>) {
    %0 = tosa.scatter %arg0, %arg1, %arg2 : (tensor<3x4x5xi32>, tensor<?x?xi32>, tensor<?x?x?xi32>) -> tensor<?x?x?xi32>
    return
  }
}

