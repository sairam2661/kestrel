module {
  func.func @test_concat_rank_invalid(%arg0: tensor<1x1x1x13x21x3x8xf32>, %arg1: tensor<1x1x1x13x21x3x8xf32>) -> tensor<1x1x1x26x21x3x8xf32> {
    %0 = tosa.concat %arg0, %arg1 {axis = 3 : i32} : (tensor<1x1x1x13x21x3x8xf32>, tensor<1x1x1x13x21x3x8xf32>) -> tensor<1x1x1x26x21x3x8xf32>
    return %0 : tensor<1x1x1x26x21x3x8xf32>
  }
}

