module {
  func.func @test_unranked_equal(%arg0: tensor<*xf32>, %arg1: tensor<f32>) {
    %0 = tosa.equal %arg0, %arg1 : (tensor<*xf32>, tensor<f32>) -> tensor<*xi1>
    return
  }
}

