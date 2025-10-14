module {
  func.func @map_unary(%arg0: tensor<64xf32>, %arg1: tensor<64xf32>) -> tensor<64xf32> {
    %mapped = linalg.map { math.absf } ins(%arg0 : tensor<64xf32>) outs(%arg1 : tensor<64xf32>)
    return %mapped : tensor<64xf32>
  }
}

