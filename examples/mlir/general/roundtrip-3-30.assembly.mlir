module {
  func.func @softmax(%arg0: tensor<2x16x32xf32>) -> tensor<2x16x32xf32> {
    %0 = tensor.empty() : tensor<2x16x32xf32>
    %1 = linalg.softmax dimension(2) ins(%arg0 : tensor<2x16x32xf32>) outs(%0 : tensor<2x16x32xf32>) -> tensor<2x16x32xf32>
    return %1 : tensor<2x16x32xf32>
  }
}

