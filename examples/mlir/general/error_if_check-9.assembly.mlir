module {
  func.func @test_mul_too_big_shift(%arg0: tensor<1x8x8x8xi32>, %arg1: tensor<1x8x8x8xi32>) -> tensor<1x8x8x8xi32> {
    %0 = "tosa.const"() <{values = dense<64> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg1, %0 : (tensor<1x8x8x8xi32>, tensor<1x8x8x8xi32>, tensor<1xi8>) -> tensor<1x8x8x8xi32>
    return %1 : tensor<1x8x8x8xi32>
  }
}

