module {
  func.func @reduce_min_constant() -> tensor<1x1x1xi32> {
    %0 = "tosa.const"() <{values = dense<42> : tensor<1x1x1xi32>}> : () -> tensor<1x1x1xi32>
    %1 = tosa.reduce_min %0 {axis = 0 : i32} : (tensor<1x1x1xi32>) -> tensor<1x1x1xi32>
    return %1 : tensor<1x1x1xi32>
  }
}

