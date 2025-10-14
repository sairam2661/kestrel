module {
  func.func @test_concat_dynamic(%arg0: tensor<1x2xf32>, %arg1: tensor<2x?xf32>) {
    %0 = tosa.concat %arg0, %arg1 {axis = 0 : i32} : (tensor<1x2xf32>, tensor<2x?xf32>) -> tensor<?x?xf32>
    return
  }
}

