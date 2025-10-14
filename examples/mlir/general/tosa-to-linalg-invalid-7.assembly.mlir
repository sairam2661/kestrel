module {
  func.func @unranked_gather(%arg0: tensor<13x21x3xf32>, %arg1: tensor<13x26xi32>) -> tensor<*xf32> {
    %0 = tosa.gather %arg0, %arg1 : (tensor<13x21x3xf32>, tensor<13x26xi32>) -> tensor<*xf32>
    return %0 : tensor<*xf32>
  }
}

