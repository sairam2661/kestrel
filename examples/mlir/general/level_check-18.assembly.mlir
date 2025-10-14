module {
  func.func @test_mul_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xf32>, %arg1: tensor<1x1x1x1x13x1x3xf32>) -> tensor<1x1x1x1x13x21x3xf32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg1, %0 : (tensor<1x1x1x1x13x21x3xf32>, tensor<1x1x1x1x13x1x3xf32>, tensor<1xi8>) -> tensor<1x1x1x1x13x21x3xf32>
    return %1 : tensor<1x1x1x1x13x21x3xf32>
  }
}

