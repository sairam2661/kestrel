module {
  func.func @fold_rank() -> index {
    %cst = arith.constant dense<[[[1, -2, 1, 36]], [[0, 2, -1, 64]]]> : tensor<2x1x4xi32>
    %rank = tensor.rank %cst : tensor<2x1x4xi32>
    return %rank : index
  }
}

