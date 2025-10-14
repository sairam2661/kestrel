module {
  func.func @insert(%arg0: f32, %arg1: index, %arg2: tensor<?x?x?xf32>) {
    %inserted = tensor.insert %arg0 into %arg2[%arg1, %arg1, %arg1] : tensor<?x?x?xf32>
    return
  }
}

