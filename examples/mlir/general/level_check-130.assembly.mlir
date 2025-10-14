module {
  func.func @test_cond_if_rank_valid(%arg0: tensor<1x1x1x1x1x1x1xf32>, %arg1: tensor<1x1x1x1x1x1x1xf32>, %arg2: tensor<i1>) -> tensor<1x1x1x1x1x1x1xf32> {
    %0 = tosa.cond_if %arg2 -> (tensor<1x1x1x1x1x1x1xf32>) {
      tosa.yield %arg3 : tensor<1x1x1x1x1x1x1xf32>
    } else {
      tosa.yield %arg4 : tensor<1x1x1x1x1x1x1xf32>
    }
    return %0 : tensor<1x1x1x1x1x1x1xf32>
  }
}

