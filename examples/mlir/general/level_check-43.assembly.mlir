module {
  func.func @test_reduce_prod_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32> {
    %0 = tosa.reduce_product %arg0 {axis = 0 : i32} : (tensor<1x1x1x1x13x21x3xf32>) -> tensor<1x1x1x1x13x21x3xf32>
    return %0 : tensor<1x1x1x1x13x21x3xf32>
  }
}

