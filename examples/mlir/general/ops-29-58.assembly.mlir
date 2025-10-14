module {
  func.func @test_mul_unranked_a_and_b(%arg0: tensor<*xf32>, %arg1: tensor<*xf32>) -> tensor<13x21x3xf32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg1, %0 : (tensor<*xf32>, tensor<*xf32>, tensor<1xi8>) -> tensor<13x21x3xf32>
    return %1 : tensor<13x21x3xf32>
  }
}

