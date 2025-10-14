module {
  func.func @for_correct_recursive_legalization_behavior(%arg0: tensor<f32>, %arg1: index) -> tensor<f32> {
    %0 = scf.for %arg2 = %arg1 to %arg1 step %arg1 iter_args(%arg3 = %arg0) -> (tensor<f32>) {
      %1 = "test.munge_tensor"(%arg3) : (tensor<f32>) -> tensor<f32>
      scf.yield %1 : tensor<f32>
    }
    return %0 : tensor<f32>
  }
}

