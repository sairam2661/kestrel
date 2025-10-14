module {
  func.func @tensor.concat_dynamic(%arg0: tensor<8x?xf32>, %arg1: tensor<8x?xf32>) -> tensor<8x?xf32> {
    %concat = tensor.concat dim(1) %arg0, %arg1 : (tensor<8x?xf32>, tensor<8x?xf32>) -> tensor<8x?xf32>
    return %concat : tensor<8x?xf32>
  }
}

