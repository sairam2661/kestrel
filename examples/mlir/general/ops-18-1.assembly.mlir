module {
  func.func @concat(%arg0: tensor<4x7x3xf32>, %arg1: tensor<4x4x3xf32>, %arg2: tensor<?x?x?xf32>) {
    %concat = tensor.concat dim(0) %arg0 : (tensor<4x7x3xf32>) -> tensor<4x7x3xf32>
    %concat_0 = tensor.concat dim(1) %arg0, %arg1 : (tensor<4x7x3xf32>, tensor<4x4x3xf32>) -> tensor<4x11x3xf32>
    %concat_1 = tensor.concat dim(2) %arg0, %arg2 : (tensor<4x7x3xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %concat_2 = tensor.concat dim(1) %arg2, %arg2 : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x10x?xf32>
    %concat_3 = tensor.concat dim(1) %arg2, %arg1, %arg0 : (tensor<?x?x?xf32>, tensor<4x4x3xf32>, tensor<4x7x3xf32>) -> tensor<4x?x3xf32>
    return
  }
}

