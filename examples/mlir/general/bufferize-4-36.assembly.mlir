module {
  func.func @tensor.concat_different_shapes(%arg0: tensor<8x4xf32>, %arg1: tensor<8x5xf32>) -> tensor<8x9xf32> {
    %concat = tensor.concat dim(1) %arg0, %arg1 : (tensor<8x4xf32>, tensor<8x5xf32>) -> tensor<8x9xf32>
    return %concat : tensor<8x9xf32>
  }
}

