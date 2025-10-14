module {
  func.func @test_reduce_product(%arg0: tensor<13x21x3xf32>) -> tensor<1x21x3xf32> {
    %0 = tosa.reduce_product %arg0 {axis = 0 : i32} : (tensor<13x21x3xf32>) -> tensor<1x21x3xf32>
    return %0 : tensor<1x21x3xf32>
  }
}

