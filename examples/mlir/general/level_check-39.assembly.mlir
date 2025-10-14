module {
  func.func @test_reduce_all_rank_invalid(%arg0: tensor<1x1x1x1x13x21x3xi1>) -> tensor<1x1x1x1x1x21x3xi1> {
    %0 = tosa.reduce_all %arg0 {axis = 4 : i32} : (tensor<1x1x1x1x13x21x3xi1>) -> tensor<1x1x1x1x1x21x3xi1>
    return %0 : tensor<1x1x1x1x1x21x3xi1>
  }
}

