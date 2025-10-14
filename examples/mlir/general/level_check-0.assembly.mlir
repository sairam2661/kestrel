module {
  func.func @test_argmax_rank_invalid(%arg0: tensor<1x1x1x1x29x29x4xf32>) -> tensor<1x1x1x1x29x4xi32> {
    %0 = tosa.argmax %arg0 {axis = 4 : i32} : (tensor<1x1x1x1x29x29x4xf32>) -> tensor<1x1x1x1x29x4xi32>
    return %0 : tensor<1x1x1x1x29x4xi32>
  }
}

