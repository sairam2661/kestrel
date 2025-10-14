module {
  func.func @unknown_memory_space(%arg0: index, %arg1: i32) -> tensor<3xi32> {
    %cst = arith.constant dense<[5, 1000, 20]> : tensor<3xi32>
    %inserted = tensor.insert %arg1 into %cst[%arg0] : tensor<3xi32>
    return %inserted : tensor<3xi32>
  }
}

