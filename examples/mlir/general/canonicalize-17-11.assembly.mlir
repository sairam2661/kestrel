module {
  func.func @fold_concat(%arg0: tensor<1x2x?xi32>) -> (tensor<1x2x3xi32>, tensor<1x2x?xi32>) {
    %concat = tensor.concat dim(2) %arg0 : (tensor<1x2x?xi32>) -> tensor<1x2x3xi32>
    %concat_0 = tensor.concat dim(2) %arg0 : (tensor<1x2x?xi32>) -> tensor<1x2x?xi32>
    return %concat, %concat_0 : tensor<1x2x3xi32>, tensor<1x2x?xi32>
  }
}

