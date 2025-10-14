module {
  func.func @bufferize_softmax(%arg0: tensor<2x16x32xf32>, %arg1: tensor<2x16x32xf32>) -> tensor<2x16x32xf32> {
    %0 = linalg.softmax dimension(2) ins(%arg0 : tensor<2x16x32xf32>) outs(%arg1 : tensor<2x16x32xf32>) -> tensor<2x16x32xf32>
    return %0 : tensor<2x16x32xf32>
  }
}

