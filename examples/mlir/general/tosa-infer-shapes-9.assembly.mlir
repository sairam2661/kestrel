module {
  func.func @test_static_argmax(%arg0: tensor<2x3xi32>) {
    %0 = tosa.argmax %arg0 {axis = 0 : i32} : (tensor<2x3xi32>) -> tensor<?xi32>
    %1 = tosa.argmax %arg0 {axis = 1 : i32} : (tensor<2x3xi32>) -> tensor<?xi32>
    return
  }
}

