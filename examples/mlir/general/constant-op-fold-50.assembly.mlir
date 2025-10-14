module {
  func.func @reduce_prod_constant() -> tensor<1x3xi32> {
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = tosa.reduce_product %0 {axis = 0 : i32} : (tensor<2x3xi32>) -> tensor<1x3xi32>
    return %1 : tensor<1x3xi32>
  }
}

