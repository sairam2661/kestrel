module {
  func.func @inlined_if_fn(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<i1>) -> tensor<f32> {
    %0 = tosa.cond_if %arg2 -> (tensor<f32>) {
      %1 = func.call @add(%arg3, %arg4) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      tosa.yield %1 : tensor<f32>
    } else {
      %1 = func.call @sub(%arg3, %arg4) : (tensor<f32>, tensor<f32>) -> tensor<f32>
      tosa.yield %1 : tensor<f32>
    }
    return %0 : tensor<f32>
  }
  func.func private @add(%arg0: tensor<f32>, %arg1: tensor<f32>) -> tensor<f32> {
    %0 = tosa.add %arg0, %arg1 : (tensor<f32>, tensor<f32>) -> tensor<f32>
    return %0 : tensor<f32>
  }
  func.func private @sub(%arg0: tensor<f32>, %arg1: tensor<f32>) -> tensor<f32> {
    %0 = tosa.sub %arg0, %arg1 : (tensor<f32>, tensor<f32>) -> tensor<f32>
    return %0 : tensor<f32>
  }
}

