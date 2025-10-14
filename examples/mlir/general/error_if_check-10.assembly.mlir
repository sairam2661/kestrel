module {
  func.func @test_mul_non_zero_shift(%arg0: tensor<1x8x8x8xi16>, %arg1: tensor<1x8x8x8xi16>) -> tensor<1x8x8x8xi32> {
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg1, %0 : (tensor<1x8x8x8xi16>, tensor<1x8x8x8xi16>, tensor<1xi8>) -> tensor<1x8x8x8xi32>
    return %1 : tensor<1x8x8x8xi32>
  }
}

