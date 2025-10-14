module {
  func.func @test_reverse(%arg0: tensor<13x21x3xi1>) -> tensor<13x21x3xi1> {
    %0 = tosa.reverse %arg0 {axis = 0 : i32} : (tensor<13x21x3xi1>) -> tensor<13x21x3xi1>
    return %0 : tensor<13x21x3xi1>
  }
}

