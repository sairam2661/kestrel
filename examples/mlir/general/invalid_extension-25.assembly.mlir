module {
  func.func @test_reduce_max(%arg0: tensor<13x21x3xbf16>) -> tensor<1x21x3xbf16> {
    %0 = tosa.reduce_max %arg0 {axis = 0 : i32} : (tensor<13x21x3xbf16>) -> tensor<1x21x3xbf16>
    return %0 : tensor<1x21x3xbf16>
  }
}

