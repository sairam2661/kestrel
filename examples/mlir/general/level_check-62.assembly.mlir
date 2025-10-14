module {
  func.func @test_identity_rank_valid(%arg0: tensor<i32>) -> tensor<i32> {
    %0 = tosa.identity %arg0 : (tensor<i32>) -> tensor<i32>
    return %0 : tensor<i32>
  }
}

