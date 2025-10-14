module {
  func.func @test_const_rank_valid(%arg0: tensor<i32>) -> tensor<i32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    return %0 : tensor<i32>
  }
}

