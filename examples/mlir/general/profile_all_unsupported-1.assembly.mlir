module {
  func.func @test_add_i32(%arg0: tensor<13x21x1xi32>, %arg1: tensor<13x21x3xi32>) -> tensor<13x21x3xi32> {
    %0 = tosa.add %arg0, %arg1 : (tensor<13x21x1xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>
    return %0 : tensor<13x21x3xi32>
  }
}

