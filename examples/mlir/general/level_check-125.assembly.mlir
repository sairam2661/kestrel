module {
  func.func @test_gather_tensor_size_invalid(%arg0: tensor<268435456x21x3xf32>, %arg1: tensor<268435456x26xi32>) -> tensor<268435456x26x3xf32> {
    %0 = tosa.gather %arg0, %arg1 : (tensor<268435456x21x3xf32>, tensor<268435456x26xi32>) -> tensor<268435456x26x3xf32>
    return %0 : tensor<268435456x26x3xf32>
  }
}

