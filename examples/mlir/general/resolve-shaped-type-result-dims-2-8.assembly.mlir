module {
  func.func @collapse_shape() -> index {
    %c0 = arith.constant 0 : index
    %c7 = arith.constant 7 : index
    %c1_i16 = arith.constant 1 : i16
    %generated = tensor.generate %c7 {
    ^bb0(%arg0: index, %arg1: index):
      tensor.yield %c1_i16 : i16
    } : tensor<?x22xi16>
    %collapsed = tensor.collapse_shape %generated [[0, 1]] : tensor<?x22xi16> into tensor<?xi16>
    %dim = tensor.dim %collapsed, %c0 : tensor<?xi16>
    return %dim : index
  }
}

