module {
  func.func @test_cast_i32_f32(%arg0: tensor<13x21x3xi32>) -> tensor<13x21x3xf32> {
    %0 = tosa.cast %arg0 : (tensor<13x21x3xi32>) -> tensor<13x21x3xf32>
    return %0 : tensor<13x21x3xf32>
  }
}

