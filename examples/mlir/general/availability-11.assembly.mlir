module {
  func.func @test_clamp(%arg0: tensor<13x21x3xf32>) -> tensor<13x21x3xf32> {
    %0 = tosa.clamp %arg0 {max_val = 3.40282347E+38 : f32, min_val = -3.40282347E+38 : f32} : (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    return %0 : tensor<13x21x3xf32>
  }
}

