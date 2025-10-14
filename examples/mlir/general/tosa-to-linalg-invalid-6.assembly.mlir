module {
  func.func @unranked_reduce(%arg0: tensor<*xf32>) -> tensor<*xf32> {
    %0 = tosa.reduce_sum %arg0 {axis = 0 : i32} : (tensor<*xf32>) -> tensor<*xf32>
    return %0 : tensor<*xf32>
  }
}

