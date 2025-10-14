module {
  func.func @test_gather_tensor_size_invalid(%arg0: tensor<536870912x21x3xf32>, %arg1: tensor<536870912x26xi32>) -> tensor<536870912x26x3xf32> {
    %0 = tosa.gather %arg0, %arg1 : (tensor<536870912x21x3xf32>, tensor<536870912x26xi32>) -> tensor<536870912x26x3xf32>
    return %0 : tensor<536870912x26x3xf32>
  }
}

