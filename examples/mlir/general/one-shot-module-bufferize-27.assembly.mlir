module {
  func.func @foo(%arg0: tensor<5xf32>) -> tensor<5xf32> {
    %0 = call @bar(%arg0) : (tensor<5xf32>) -> tensor<5xf32>
    return %0 : tensor<5xf32>
  }
  func.func @bar(%arg0: tensor<5xf32>) -> tensor<5xf32> {
    %0 = call @foo(%arg0) : (tensor<5xf32>) -> tensor<5xf32>
    return %0 : tensor<5xf32>
  }
}

