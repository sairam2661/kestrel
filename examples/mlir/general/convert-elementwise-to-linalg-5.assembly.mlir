module {
  func.func @cmpf(%arg0: tensor<4x?x?x8x2x?xf32>, %arg1: tensor<4x?x?x8x2x?xf32>) -> tensor<4x?x?x8x2x?xi1> {
    %0 = arith.cmpf olt, %arg0, %arg1 : tensor<4x?x?x8x2x?xf32>
    return %0 : tensor<4x?x?x8x2x?xi1>
  }
}

