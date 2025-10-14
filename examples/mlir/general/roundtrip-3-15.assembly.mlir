module {
  func.func @map_binary(%arg0: tensor<64xf32>, %arg1: tensor<64xf32>, %arg2: tensor<64xf32>) -> tensor<64xf32> {
    %mapped = linalg.map { arith.addf } ins(%arg0, %arg1 : tensor<64xf32>, tensor<64xf32>) outs(%arg2 : tensor<64xf32>)
    return %mapped : tensor<64xf32>
  }
}

