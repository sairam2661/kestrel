module {
  func.func @test_concat_axis_1(%arg0: tensor<2x1xf32>, %arg1: tensor<2x2xf32>) {
    %0 = tosa.concat %arg0, %arg1 {axis = 1 : i32} : (tensor<2x1xf32>, tensor<2x2xf32>) -> tensor<?x?xf32>
    return
  }
}

