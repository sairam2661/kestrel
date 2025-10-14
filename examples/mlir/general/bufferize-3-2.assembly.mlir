module {
  func.func @if_correct_recursive_legalization_behavior(%arg0: i1, %arg1: tensor<f32>) -> tensor<f32> {
    %0 = scf.if %arg0 -> (tensor<f32>) {
      %1 = "test.munge_tensor"(%arg1) : (tensor<f32>) -> tensor<f32>
      scf.yield %1 : tensor<f32>
    } else {
      %1 = "test.munge_tensor"(%arg1) : (tensor<f32>) -> tensor<f32>
      scf.yield %1 : tensor<f32>
    }
    return %0 : tensor<f32>
  }
}

