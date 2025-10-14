module {
  func.func @reverse_length_one(%arg0: tensor<10x1xi32>) -> (tensor<10x1xi32>, tensor<10x1xi32>) {
    %0 = tosa.reverse %arg0 {axis = 0 : i32} : (tensor<10x1xi32>) -> tensor<10x1xi32>
    %1 = tosa.reverse %arg0 {axis = 1 : i32} : (tensor<10x1xi32>) -> tensor<10x1xi32>
    return %0, %1 : tensor<10x1xi32>, tensor<10x1xi32>
  }
}

