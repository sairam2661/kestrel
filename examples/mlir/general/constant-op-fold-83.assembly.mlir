module {
  func.func @reduce_sum_constant_aggressive() -> tensor<1x3xi32> {
    %0 = "tosa.const"() <{values = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = tosa.reduce_sum %0 {axis = 0 : i32} : (tensor<2x3xi32>) -> tensor<1x3xi32>
    %2 = tosa.reduce_sum %0 {axis = 0 : i32} : (tensor<2x3xi32>) -> tensor<1x3xi32>
    %3 = tosa.add %1, %2 : (tensor<1x3xi32>, tensor<1x3xi32>) -> tensor<1x3xi32>
    return %3 : tensor<1x3xi32>
  }
}

