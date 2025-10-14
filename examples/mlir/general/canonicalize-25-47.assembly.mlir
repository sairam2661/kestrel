module {
  func.func @select_true_value(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>) -> tensor<2x3xi32> {
    %0 = "tosa.const"() <{values = dense<true> : tensor<2x3xi1>}> : () -> tensor<2x3xi1>
    %1 = tosa.select %0, %arg0, %arg1 : (tensor<2x3xi1>, tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    return %1 : tensor<2x3xi32>
  }
}

