module {
  func.func @if_test_unranked(%arg0: tensor<f32>, %arg1: tensor<3xf32>, %arg2: tensor<i1>) {
    %0 = tosa.cond_if %arg2 -> (tensor<*xf32>) {
      tosa.yield %arg0 : tensor<f32>
    } else {
      tosa.yield %arg1 : tensor<3xf32>
    }
    return
  }
}

