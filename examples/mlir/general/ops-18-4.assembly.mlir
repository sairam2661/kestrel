module {
  func.func @extract(%arg0: tensor<?x?x?xf32>, %arg1: index) {
    %extracted = tensor.extract %arg0[%arg1, %arg1, %arg1] : tensor<?x?x?xf32>
    return
  }
}

