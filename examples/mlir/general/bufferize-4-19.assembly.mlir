module {
  func.func @tensor.insert(%arg0: tensor<5xf32>, %arg1: index, %arg2: f32) -> tensor<5xf32> {
    %inserted = tensor.insert %arg2 into %arg0[%arg1] : tensor<5xf32>
    return %inserted : tensor<5xf32>
  }
}

