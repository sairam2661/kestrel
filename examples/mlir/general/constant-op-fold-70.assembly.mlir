module {
  func.func @reduce_min_constant() -> tensor<2x2x2x1xi32> {
    %0 = "tosa.const"() <{values = dense<[[[[1, 2], [3, 4]], [[5, 6], [7, 8]]], [[[9, 10], [11, 12]], [[13, 14], [15, 16]]]]> : tensor<2x2x2x2xi32>}> : () -> tensor<2x2x2x2xi32>
    %1 = tosa.reduce_min %0 {axis = 3 : i32} : (tensor<2x2x2x2xi32>) -> tensor<2x2x2x1xi32>
    return %1 : tensor<2x2x2x1xi32>
  }
}

