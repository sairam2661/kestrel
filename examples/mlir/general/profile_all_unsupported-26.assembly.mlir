module {
  func.func @test_concat(%arg0: tensor<13x21x3xi1>, %arg1: tensor<13x21x3xi1>) -> tensor<26x21x3xi1> {
    %0 = tosa.concat %arg0, %arg1 {axis = 0 : i32} : (tensor<13x21x3xi1>, tensor<13x21x3xi1>) -> tensor<26x21x3xi1>
    return %0 : tensor<26x21x3xi1>
  }
}

