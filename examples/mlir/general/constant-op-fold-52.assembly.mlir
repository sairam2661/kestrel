module {
  func.func @reduce_prod_constant() -> tensor<3x1xi32> {
    %0 = "tosa.const"() <{values = dense<[[1, 2, 3], [4, 5, 6], [7, 8, 9]]> : tensor<3x3xi32>}> : () -> tensor<3x3xi32>
    %1 = tosa.reduce_product %0 {axis = 1 : i32} : (tensor<3x3xi32>) -> tensor<3x1xi32>
    return %1 : tensor<3x1xi32>
  }
}

