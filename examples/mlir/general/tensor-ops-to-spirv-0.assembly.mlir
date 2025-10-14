module {
  func.func @tensor_extract_constant(%arg0: index, %arg1: index, %arg2: index) -> i32 {
    %cst = arith.constant dense<[[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]]> : tensor<2x2x3xi32>
    %extracted = tensor.extract %cst[%arg0, %arg1, %arg2] : tensor<2x2x3xi32>
    return %extracted : i32
  }
}

