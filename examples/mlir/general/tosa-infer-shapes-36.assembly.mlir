module {
  func.func @gather_static(%arg0: tensor<3x4x5xi32>, %arg1: tensor<3x6xi32>) {
    %0 = tosa.gather %arg0, %arg1 : (tensor<3x4x5xi32>, tensor<3x6xi32>) -> tensor<?x?x?xi32>
    return
  }
}

