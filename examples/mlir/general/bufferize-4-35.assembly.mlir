module {
  func.func @tensor.concat(%arg0: tensor<8xf32>) -> tensor<16xf32> {
    %concat = tensor.concat dim(0) %arg0, %arg0 : (tensor<8xf32>, tensor<8xf32>) -> tensor<16xf32>
    return %concat : tensor<16xf32>
  }
}

