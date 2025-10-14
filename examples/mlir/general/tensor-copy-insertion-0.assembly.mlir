module {
  func.func @read_after_write_conflict(%arg0: tensor<?xf32>, %arg1: index, %arg2: f32) -> (tensor<?xf32>, tensor<?xf32>) {
    %inserted = tensor.insert %arg2 into %arg0[%arg1] : tensor<?xf32>
    return %inserted, %arg0 : tensor<?xf32>, tensor<?xf32>
  }
}

