module {
  func.func @reduce_sum_constant() -> tensor<2x1xi32> {
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = tosa.reduce_sum %0 {axis = 1 : i32} : (tensor<2x3xi32>) -> tensor<2x1xi32>
    return %1 : tensor<2x1xi32>
  }
}

