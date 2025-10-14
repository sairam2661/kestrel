module {
  func.func @reduce_sum_constant_aggressive() -> tensor<2x3xi32> {
    %0 = "tosa.const"() <{values = dense<1> : tensor<2x2x3xi32>}> : () -> tensor<2x2x3xi32>
    %1 = "tosa.const"() <{values = dense<2> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %2 = tosa.reduce_sum %0 {axis = 0 : i32} : (tensor<2x2x3xi32>) -> tensor<1x2x3xi32>
    %3 = tosa.argmax %2 {axis = 1 : i32} : (tensor<1x2x3xi32>) -> tensor<1x3xi32>
    %4 = tosa.argmax %0 {axis = 0 : i32} : (tensor<2x2x3xi32>) -> tensor<2x3xi32>
    %5 = tosa.add %3, %1 : (tensor<1x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %6 = tosa.add %5, %4 : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    return %6 : tensor<2x3xi32>
  }
}

