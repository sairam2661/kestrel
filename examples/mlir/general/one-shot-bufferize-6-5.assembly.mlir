module {
  func.func @insert_op(%arg0: tensor<?xf32> {bufferization.writable = true}, %arg1: f32, %arg2: index) -> tensor<?xf32> {
    %inserted = tensor.insert %arg1 into %arg0[%arg2] : tensor<?xf32>
    return %inserted : tensor<?xf32>
  }
}

