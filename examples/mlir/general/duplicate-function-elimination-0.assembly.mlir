module {
  func.func @identity(%arg0: tensor<f32>) -> tensor<f32> {
    return %arg0 : tensor<f32>
  }
  func.func @also_identity(%arg0: tensor<f32>) -> tensor<f32> {
    return %arg0 : tensor<f32>
  }
  func.func @yet_another_identity(%arg0: tensor<f32>) -> tensor<f32> {
    return %arg0 : tensor<f32>
  }
  func.func @user(%arg0: tensor<f32>) -> tensor<f32> {
    %0 = call @identity(%arg0) : (tensor<f32>) -> tensor<f32>
    %1 = call @also_identity(%0) : (tensor<f32>) -> tensor<f32>
    %2 = call @yet_another_identity(%1) : (tensor<f32>) -> tensor<f32>
    return %2 : tensor<f32>
  }
}

