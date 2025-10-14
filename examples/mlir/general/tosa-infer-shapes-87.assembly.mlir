module {
  func.func @if_test_simple(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>) {
    %0 = tosa.log %arg0 : (tensor<f32>) -> tensor<f32>
    %1 = tosa.log %arg1 : (tensor<f32>) -> tensor<f32>
    %2 = tosa.cond_if %arg2 -> (tensor<f32>) {
      tosa.yield %0 : tensor<f32>
    } else {
      tosa.yield %1 : tensor<f32>
    }
    return
  }
}

