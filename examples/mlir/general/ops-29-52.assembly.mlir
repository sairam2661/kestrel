module {
  func.func @test_mul_scalar_with_unranked_output(%arg0: tensor<f32>, %arg1: tensor<f32>) -> tensor<*xf32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = tosa.mul %arg0, %arg1, %0 : (tensor<f32>, tensor<f32>, tensor<1xi8>) -> tensor<*xf32>
    return %1 : tensor<*xf32>
  }
}

