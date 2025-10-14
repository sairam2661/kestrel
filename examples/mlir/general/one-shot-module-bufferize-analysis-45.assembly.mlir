module {
  func.func @foo(%arg0: tensor<?xf32>) -> tensor<?xf32> {
    return %arg0 : tensor<?xf32>
  }
  func.func @bar(%arg0: tensor<?xf32>) -> tensor<?xf32> {
    %0 = call @foo(%arg0) : (tensor<?xf32>) -> tensor<?xf32>
    return %0 : tensor<?xf32>
  }
}

