module {
  func.func @test_reduce_max(%arg0: tensor<13x21x3xi8>) -> tensor<1x21x3xi8> {
    %0 = tosa.reduce_max %arg0 {axis = 0 : i32} : (tensor<13x21x3xi8>) -> tensor<1x21x3xi8>
    return %0 : tensor<1x21x3xi8>
  }
}

