module {
  func.func @test_reduce_any(%arg0: tensor<13x21x3xi1>) -> tensor<1x21x3xi1> {
    %0 = tosa.reduce_any %arg0 {axis = 0 : i32} : (tensor<13x21x3xi1>) -> tensor<1x21x3xi1>
    return %0 : tensor<1x21x3xi1>
  }
}

