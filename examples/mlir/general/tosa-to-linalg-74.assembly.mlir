module {
  func.func @maximum_nan_propagate(%arg0: tensor<5x4xf32>, %arg1: tensor<5x4xf32>) {
    %0 = tosa.maximum %arg0, %arg1 : (tensor<5x4xf32>, tensor<5x4xf32>) -> tensor<5x4xf32>
    return
  }
}

